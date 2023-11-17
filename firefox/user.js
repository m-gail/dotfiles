// userChrome
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);

// Firefox View
user_pref("browser.tabs.firefox-view", false);
user_pref("browser.tabs.firefox-view-newIcon", false);
user_pref("browser.tabs.firefox-view-next", false);

// Tracking
user_pref("browser.contentblocking.category", "strict");

// Pocket
user_pref("brwoser.pocket.enabled", false);
user_pref("extensions.pocket.enabled", false);

// Fullscreen
user_pref("full-screen-api.transition-duration.enter", "0 0");
user_pref("full-screen-api.transition-duration.leave", "0 0");
user_pref("full-screen-api.warning.delay", -1);
user_pref("full-screen-api.warning.timeout", 0);

// https
user_pref("dom.security.https_first", true);
user_pref("dom.security.https_only_mode", true);

// Form fill and password manager
user_pref("extensions.formautofill.addresses.enabled", false);
user_pref("extensions.formautofill.creditCards.enabled", false);
user_pref("extensions.formautofill.heuristics.enabled", false);
user_pref("browser.formfill.enable", false);

user_pref("signon.formlessCapture.enabled", false);
user_pref("signon.privateBrowsingCapture.enabled", false);
user_pref("signon.autofillForms", false);
user_pref("signon.rememberSignons", false);
user_pref("editor.truncate_user_pastes", false);

user_pref("signon.rememberSignons", false);

// Firefox sync
user_pref("identity.fxaccounts.enabled", false);
