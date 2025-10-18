pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
    property ListModel workspaces: ListModel {}
    function updateWorkspaces(workspacesEvent) {
        const sortedWorkspaces = workspacesEvent.workspaces;
        sortedWorkspaces.sort((a, b) => parseInt(a.id) - parseInt(b.id));
        workspaces.clear();
        for (const workspace of sortedWorkspaces) {
            workspaces.append({
                id: workspace.id,
                idx: workspace.idx,
                isActive: workspace.is_active,
                name: workspace.name,
                output: workspace.output
            });
        }
    }

    function activateWorkspace(workspacesEvent) {
        const activatedWorkspace = workspaces.get(workspacesEvent.id - 1);
        for (let i = 0; i < workspaces.count; i++) {
            const value = workspaces.get(i);
            if (value.output === activatedWorkspace.output) {
                workspaces.set(i, {
                    id: value.id,
                    idx: value.idx,
                    isActive: value.id === activatedWorkspace.id,
                    name: value.name,
                    output: value.output
                });
            }
        }
    }

    Process {
        id: niriEvents
        running: true
        command: ["niri", "msg", "--json", "event-stream"]

        stdout: SplitParser {
            onRead: data => {
                try {
                    const event = JSON.parse(data.trim());
                    if (event.WorkspacesChanged) {
                        updateWorkspaces(event.WorkspacesChanged);
                    } else if (event.WorkspaceActivated) {
                        activateWorkspace(event.WorkspaceActivated);
                    }
                } catch (e) {
                    console.log(e);
                }
            }
        }
    }
}
