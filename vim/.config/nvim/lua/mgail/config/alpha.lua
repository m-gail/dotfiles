local theme = require("alpha.themes.dashboard")

local artworks = {
    {
        '',
        '',
        '⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⢻⣿⡗⢶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣄',
        '⠀⢻⣇⠀⠈⠙⠳⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⠶⠛⠋⣹⣿⡿',
        '⠀⠀⠹⣆⠀⠀⠀⠀⠙⢷⣄⣀⣀⣀⣤⣤⣤⣄⣀⣴⠞⠋⠉⠀⠀⠀⢀⣿⡟⠁',
        '⠀⠀⠀⠙⢷⡀⠀⠀⠀⠀⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡾⠋⠀⠀',
        '⠀⠀⠀⠀⠈⠻⡶⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣠⡾⠋⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⣼⠃⠀⢠⠒⣆⠀⠀⠀⠀⠀⠀⢠⢲⣄⠀⠀⠀⢻⣆⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⢰⡏⠀⠀⠈⠛⠋⠀⢀⣀⡀⠀⠀⠘⠛⠃⠀⠀⠀⠈⣿⡀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⣾⡟⠛⢳⠀⠀⠀⠀⠀⣉⣀⠀⠀⠀⠀⣰⢛⠙⣶⠀⢹⣇⠀⠀⠀⠀',
        '⠀⠀⠀⠀⢿⡗⠛⠋⠀⠀⠀⠀⣾⠋⠀⢱⠀⠀⠀⠘⠲⠗⠋⠀⠈⣿⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠘⢷⡀⠀⠀⠀⠀⠀⠈⠓⠒⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡇⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠈⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣧⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠁⠀⠀⠀',
        '',
        '',
    },
    {

        '',
        '',
        '   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣭⣿⣶⣿⣦⣼⣆         ',
        '    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ',
        '          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷⠄⠄⠄⠄⠻⠿⢿⣿⣧⣄     ',
        '           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ',
        '          ⢠⣿⣿⣿⠈  ⠡⠌⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ',
        '   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘⠄ ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ',
        '  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ',
        ' ⣠⣿⠿⠛⠄⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ',
        ' ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇⠄⠛⠻⢷⣄ ',
        '      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ',
        '       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ',
        '',
        '',
    },
    {
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⢀⣀⠤⣄⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠤⢤⣀⣀⣀⣠⠴⠛⠒⠤⠴⠚⠉⠀⠉⠉⠀⠀⠈⠛⠲⢄⠀⠀⠀⠀⠀',
        '⠀⢀⡤⣖⠒⠚⠋⠉⠉⠛⠛⠁⠀⠀⠀⠀⠈⠁⠀⠁⠀⠀⠀⠀⠀⢀⣀⡀⠀⠀⢀⣀⣀⠀⣈⣓⣦⠀⠀⠀',
        '⠀⢸⠀⠈⠛⠉⠉⠑⠦⠤⠤⢤⣀⣀⠀⢀⣀⣀⡠⠴⠚⠢⠤⠤⠖⠋⠀⠉⠓⠚⠁⠀⠈⠉⠁⠀⣨⠇⠀⠀',
        '⠀⢈⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠁⣀⠀⠀⠀⡀⠀⠀⢀⡀⠀⠀⢀⠀⠀⠀⠀⠀⢀⣾⠀⠀⡞⠁⠀⠀⠀',
        '⠀⣾⠁⠀⠀⠀⠀⠀⣠⣾⣿⠀⢨⠇⠈⢣⡀⢀⣳⣄⣀⣞⠀⠀⢀⣸⣄⣰⡀⢀⠀⠈⠁⠀⢰⠃⠀⠀⠀⠀',
        '⠀⢹⡄⠀⠀⠀⠀⠸⠿⠟⠁⢰⡋⠀⠀⢀⠟⠉⠀⠀⣀⣈⠓⣾⠋⠀⠀⠀⠉⢻⡀⠀⣠⠖⠁⠀⠀⠀⠀⠀',
        '⢀⡜⠀⢀⣴⠀⠀⠀⠀⠀⠀⠀⣷⠀⢠⡏⠀⠀⢠⣿⣿⣿⣇⠈⡇⢠⣾⣿⣷⡀⣧⠀⡇⠀⠀⠀⠀⠀⠀⠀',
        '⢸⡁⠀⠾⠃⠀⠀⠀⠀⠀⠀⡴⠻⡷⠸⡇⠀⠀⢸⡘⡿⢯⡟⠀⡞⢸⣿⣿⣿⠃⡏⢀⡇⠀⠀⠀⠀⠀⠀⠀',
        '⠘⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢧⠀⠁⠀⠹⣄⠀⠀⠙⠛⠉⢀⡼⢧⣄⣙⣫⡥⠚⡴⠋⠀⠀⠀⠀⠀⠀⠀⠀',
        '⢠⠇⠀⠀⠀⠀⠀⢀⣤⠀⢀⡼⠀⡄⠀⠀⠈⠛⠒⠤⠴⠚⠋⢦⡓⠦⣤⣤⣤⣤⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀',
        '⢯⡀⠀⠀⠀⢀⣼⣿⡿⠀⣞⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠈⠙⢦⣀⠀⣀⣼⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⢨⡇⠀⠀⠀⠸⠿⠋⠀⠀⢘⡆⠀⠀⠠⠖⠚⠉⡽⠉⠛⠒⡖⡖⠒⠚⣿⠉⠁⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⡎⠀⠀⠀⠀⠀⠀⠀⠀⢠⡟⠀⢀⡀⠀⠀⠀⠸⠓⠒⠒⢴⡇⠛⠒⠒⣻⠀⠀⡸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠸⡆⢀⣤⠀⠀⠀⠀⠀⠘⣆⠀⠉⠁⠀⠀⠀⠈⠒⠒⠒⠋⠁⠀⠈⠉⢽⡆⠸⡧⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⣸⠃⠉⠁⢀⣤⠤⢤⣀⡀⠜⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣠⠤⠛⠓⣾⣧⡆⢙⡇⠀⠀⠀⠀⠀⠀⠀',
        '⠻⢤⣀⠀⢺⠀⠀⠀⠈⠙⠓⢦⣀⣠⢤⡄⠤⣤⣤⣴⣿⠋⢣⡞⢁⣀⣠⣤⡿⢿⡝⣯⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⣏⡑⠺⣆⠀⠀⠀⢠⡶⠷⠿⠤⢤⣽⣎⣠⣿⣯⣽⣷⣾⣿⣿⣿⣿⣿⡟⠉⠙⣮⠷⢦⣀⠀⠀⠀⠀⠀',
        '⠀⠀⣟⠹⣟⣺⣦⣀⠀⡟⢛⣷⣲⣶⡶⢥⣴⣤⣤⣤⣤⣈⣉⣩⣿⣿⠛⠛⠓⠤⠴⠃⠀⣜⠻⣟⣻⣲⡄⠀',
        '⠀⠀⢿⣧⣿⡿⠿⣿⢿⣷⣿⠿⠿⠿⢧⣀⣙⣉⣭⣿⣿⡿⠟⣛⣿⠏⠛⠛⠓⠲⢶⡀⢠⣌⠳⣌⠻⢿⡁⠀',
        '⠀⠀⠀⠀⠉⠛⠿⣦⣸⣇⣀⣠⣴⢾⡟⠛⠉⠁⠀⠙⢻⠛⡟⠛⠁⠀⠀⠀⠀⠀⠀⠙⢦⣙⠳⣌⠳⢦⣹⡆',
        '⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣷⣶⣾⠃⠀⠀⠀⠀⠀⠸⡧⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠓⠿⠟⠿⠿⠁',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣹⡇⠀⠀⠀⠀⠀⠀⠀⢠⠋⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⢛⡇⠀⠀⠀⠀⠀⠀⣴⣿⣤⣷⣄⣠⣴⣾⣶⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⢸⠃⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣍⣽⣿⣿⡗⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣷⣾⣦⣀⣴⣾⣿⣷⣄⠙⠛⠿⠽⠻⠿⣿⣿⡿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣯⣭⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠻⠯⠛⠻⠿⠿⠿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    },
    {
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣾⣟⡛⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⣀⣠⣀⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⡾⢟⣽⠾⠛⢱⢸⣷⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⣼⠏⡉⢉⠉⠛⠻⠷⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⠟⣋⣴⠟⠁⠀⡀⠻⣘⣿⠀⠀⠀⠀⠀⠀⠀⠀',
        '⢠⣿⠐⣴⡿⠶⣧⣆⣐⠈⡙⠿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣀⣀⣀⡀⣀⣤⡾⠛⣁⣶⠻⠅⡒⠂⠄⠀⣰⠋⣿⡄⠀⠀⠀⠀⠀⠀⠀',
        '⢸⣿⢠⣿⠆⡀⠀⠉⠻⢷⣤⡂⠌⡙⠿⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣴⣾⠛⠉⠈⠉⠉⠉⠙⢻⠻⢶⣽⣋⠀⠀⠈⠀⢄⠀⠀⠀⠧⣿⡇⠀⠀⠀⠀⠀⠀⠀',
        '⠀⣿⠀⣿⡆⢀⠁⠄⠀⠀⠉⠻⢶⣄⠒⡈⠙⠻⠿⢶⣦⣤⣤⣤⣤⠶⡶⠟⠟⠛⣉⠕⠁⠀⠀⠀⠀⠀⠀⠀⠈⠁⠒⠤⡉⠛⠾⢤⣤⣈⠀⠀⠀⢧⢹⣇⠀⠀⠀⠀⠀⠀⠀',
        '⠀⢿⡇⢹⡂⠠⠈⠀⠀⠀⠀⠀⠀⠙⠷⣦⣁⠂⠔⠠⠐⣀⠂⡐⡀⢂⡐⡬⠔⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠪⠔⠤⢌⣙⠳⣦⣄⢈⢾⣿⠀⠀⠀⠀⠀⠀⠀',
        '⠀⢸⣷⢸⠄⠁⠠⠁⢂⠡⠄⠈⠉⠉⠖⠻⠿⣶⡈⠡⠌⡀⠆⠡⡰⠞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠃⠰⠛⠿⠞⣿⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⣿⡄⢟⠀⠠⠀⠘⠄⡀⠀⠀⡀⠀⠀⢠⡿⠃⠤⢀⠃⡘⡜⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣧⣄⠀⠘⠧⣿⡇⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠹⣷⠈⠀⠁⠀⠀⠀⠀⠀⡠⠁⠀⢠⠿⠁⠌⡐⢂⠡⣌⠀⠀⠀⠀⣠⣴⣶⣶⣶⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣏⣘⣿⣿⣿⡄⠀⠀⠹⣷⡄⠀⠀⠀⠀⠀',
        '⠀⠀⠀⢻⣷⢬⠀⠀⠀⢀⠂⠌⠀⠀⢀⣾⠃⠌⡐⠰⢀⢲⡄⠀⠀⢠⣿⣿⣿⣿⣄⣨⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⠟⠀⠀⠀⠈⢹⢿⣦⠀⠀⠀⠀',
        '⠀⠀⠀⠀⢿⣆⢣⠀⠀⠠⠐⠀⡀⠄⣾⠃⠰⣀⠡⠒⡈⠄⡄⠀⠀⠈⠛⠛⠿⠿⠿⠿⠿⠿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⠀⠀⠀⠀⢶⡌⣻⣷⡄⠀⠀',
        '⠀⠀⠀⠀⠈⢿⣎⣄⠀⠀⠀⠀⠁⢸⡟⢈⠡⠄⣂⠡⡐⢈⠘⡐⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣔⣦⡴⠴⠾⢟⣲⠀⠀⠀⠀⠀⠀⠀⠀⠙⢴⣹⣿⡄⠀',
        '⠀⠀⠀⠀⠀⠈⢿⣎⢲⠀⠀⠀⠀⣾⠇⡌⢒⡈⢄⠒⢠⠃⡰⢀⢆⡆⠠⠀⠒⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠯⢶⡄⠀⢢⣟⠃⠀⠀⠀⠀⠀⠀⠀⠃⠐⢀⠑⣞⣿⡄',
        '⠀⠀⠀⠀⠀⠀⠈⢿⣎⢇⠀⠀⠀⡿⡐⢌⠢⡘⢄⢊⣴⢮⠳⠙⡸⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠇⢀⣘⠇⠀⠀⠀⡀⢀⠀⠀⠀⠀⠀⠂⠄⠈⢿⡇',
        '⠀⠀⠀⠀⠀⠀⠀⠈⣿⡎⠳⢖⡚⢥⡘⠤⢃⡜⢠⠊⡍⢄⠢⣡⠇⠂⠁⠀⠀⢀⠤⠂⠀⠀⠀⠀⠀⣤⡄⡀⣀⢠⣤⢰⡦⠟⠙⠚⠒⠒⠛⠛⠉⠀⠀⠀⠀⠀⠀⠀⠈⢸⡇',
        '⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡑⢎⡜⡰⢌⢣⠣⡜⢢⢍⣴⡞⠟⡻⠀⠀⢠⠂⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣺⠁',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣏⠖⡼⣡⠏⡶⣙⢬⣳⡞⢎⡜⣡⣧⠴⠁⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡟⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣎⠵⣣⢝⡲⣍⠿⣣⠝⡮⣜⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠇⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣧⣛⠴⣋⢶⡩⢞⡥⣛⠴⣣⠗⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢤⡿⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣏⡞⡭⣖⡹⢎⠶⣍⡳⡭⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡪⢢⡿⠁⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⢴⢣⡝⣎⢻⣔⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠠⠀⠒⠉⢀⣿⠃⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡿⠙⠶⠹⠬⠓⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠃⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡏⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠁⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⢠⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⢀⣾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡄⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⢠⡾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣇⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⢠⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡄⠀⠀⠀⠀',
        '⠀⠀⠀⠀⢠⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡀⠀⠀⠀',
        '⠀⠀⠀⢀⡾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣷⡀⠀⠀',
    },
    {
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡤⠄⠃⠳⣄⠸⢰⣤⣖⡊⣝⢲⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣼⣹⠀⠑⠀⢠⡟⣙⣶⢞⡛⠀⣈⣼⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡾⠋⠁⠀⠀⠙⢷⣄⢀⡼⡟⣿⡝⣮⣝⢿⡍⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡿⠁⠀⣤⠀⠀⠀⠀⠙⣿⣤⣇⡿⢷⣝⣛⣣⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣾⣿⣿⣦⠀⢀⣀⣀⠀⠀⠀⠀⢀⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡋⠀⠀⠈⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣤⣿⣿⣦⣿⣿⣴⣿⣟⣿⣷⠀⠀⠀⣸⡏⠀⠀⠀⠀⠀⠀⠀⠘⠃⠀⠘⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣻⣿⣿⣿⣿⣷⣿⣿⣿⠿⠋⠀⠀⢠⣿⠀⠀⢀⣤⡄⠀⠀⠀⠀⢠⣦⣀⡸⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠈⠛⠻⢻⣿⣿⣿⣿⣿⢿⡟⢿⣿⡆⠀⠀⣸⡏⠀⠈⠿⠋⠁⠀⠀⠀⠀⠀⢉⣋⠀⠙⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣟⣿⣁⣼⣿⠙⠿⣿⣿⡿⠃⠀⠀⣿⠃⠀⠀⣠⠞⠉⠉⠓⣦⣠⡞⠉⠉⠳⡄⠹⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⢰⠏⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣙⣻⣿⣿⣋⣀⣀⣀⣀⣀⣀⣀⣸⣿⠀⠀⢰⡇⠀⠀⣤⣄⢸⣿⠀⣷⡄⠀⢻⠀⣿⣀⠀⠀⠀⠀⠀⠄⠐⠈⠉⠉⠉⠓⠂⠖⠛⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⣹⡇⠀⠀⠘⣧⠀⠀⠙⠁⢸⠿⡆⠉⠀⠀⣸⠀⢻⣏⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠒⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠁⠀⠀⠀⠈⠳⢤⣀⡴⠏⠀⠙⠦⣤⣴⡋⠀⠈⣿⡖⠂⠀⠀⠀⠒⠒⠒⠒⠂⠀⠀⠀⠀⠀⠈⠒⠒⠒⠂',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠒⠂⠐⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⣴⠦⢤⣄⣀⣀⡤⠴⣻⠇⠀⠀⠹⡟⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠶⠆⠒⠒⠂⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠙⠿⣶⣶⣶⣴⣶⡿⠋⠀⠀⠀⠀⢻⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⢀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠤⠞⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠿⠗⠀⠀⠀⠀⠀⠀⠈⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠰⣿⣻⣿⣿⣷⣦⣄⠀⠀⣀⡴⠞⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⣠⡿⢿⣿⡷⢾⣿⣿⣿⡞⠿⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⣠⡾⠋⠀⠀⠈⠛⣿⣿⠿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢲⡄⠈⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⣼⠏⠀⠀⠀⠀⠀⢀⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⣿⣿⣟⣿⠿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣄⠀⠈⢷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⣼⠃⠀⠀⠀⠀⠀⢀⣾⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣴⠿⠿⠿⠷⠶⢾⡿⢿⣦⡼⠿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢧⡀⠀⠙⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⡟⠀⠀⠀⠀⠀⠀⣼⠛⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⡟⠁⠀⠀⠀⠀⠀⣼⣧⠸⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣄⡀⠈⢷⡄⠀⠀⠀⠀⠀⠀⠀⠀',
    },
    {
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⣶⣾⣿⣿⡿⠟⠛⠛⠛⠛⠛⠻⠿⣿⣿⣿⣿⣿⣷⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣶⣿⣿⣿⣿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⢿⣿⣿⣿⣿⣿⣿⣶⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⣿⣿⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⣼⡿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⢻⣿⡟⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠘⢿⣼⡟⢻⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠳⠆⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⢈⣻⣷⣾⣿⡇⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⠀⠀⠀⢻⣿⣿⣿⡿⢋⡀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⣿⠉⠙⢿⣿⡇⠀⠀⠀⠈⢻⣿⣷⣶⣄⣠⠀⠀⠀⣀⣠⣾⣿⣿⡯⠉⠁⠀⠀⠀⢻⣿⣿⡿⠛⢿⡆⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⣟⠀⠘⢾⡿⠀⠀⠀⢀⣠⣤⣶⣿⣿⣿⠟⠀⠀⣿⣿⣿⣿⣿⣷⣦⣄⡀⠀⠀⠀⢸⣿⣯⠀⣶⡆⣿⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⣿⠈⠀⣼⠃⠀⠀⠘⠋⠁⣈⣹⣿⣿⠏⠀⠀⠀⣿⣿⣏⠀⣈⣁⣈⡝⠻⠿⡆⠀⠰⣿⣏⠈⣿⢷⡟⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠰⡇⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⢸⣽⣿⣆⠀⠀⠀⠀⠀⠀⠁⠀⢸⣿⣿⡆⣏⣿⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⢱⡀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⢿⣿⡄⠀⠀⠀⠀⠀⠀⠀⢸⣿⡟⣿⣿⡇⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠙⣄⠀⠀⣸⡄⠀⠀⠀⠀⠀⢀⡞⠁⣤⣤⣀⣠⣤⣀⣄⣸⣿⣦⡀⠀⠀⠀⠀⠀⢸⣿⣄⠟⣼⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⠷⠶⠻⡇⠀⠀⠀⠀⠀⠟⠀⠀⠀⠀⠉⠙⠿⠿⣿⠉⢀⡿⣷⡀⢸⣇⢰⠀⠸⣿⣡⡾⠃⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡇⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠐⠛⠀⠀⠁⠀⠀⢰⡟⢷⢸⣿⢀⠀⠀⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡇⠀⠀⠀⠀⣼⡿⠓⠶⠒⠛⠛⠉⠙⠛⠻⠻⠿⣿⡇⠀⢸⡟⠀⠀⣠⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⡇⠒⠀⠀⠀⠈⠀⠀⠀⠀⠀⣶⠶⠶⠶⠶⠀⢀⣿⠁⢠⡾⠁⠀⣰⣿⠉⢇⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⡷⠶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠿⠃⢀⣴⡟⢹⡄⠘⣧⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⢁⡆⠀⠐⢢⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠒⠀⠀⣠⣴⣿⡟⣰⡿⣡⡄⠈⢣⡀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⣀⣠⡤⠖⠒⠋⠁⠀⠘⣷⠀⠀⠀⠙⠦⣄⣀⣀⣀⣀⣀⣤⣶⣿⣦⣤⣴⣶⣿⡿⢋⣼⠟⢁⣿⠁⣠⣤⡉⠀⠀⠀⠀⠀⠀',
        '⣠⠤⠔⠒⠚⠉⠁⠀⠀⠀⠀⠀⠀⠀⢹⡆⠀⠀⠀⠀⠉⠻⣿⣿⣿⣯⣥⣤⣤⣶⣿⣿⡿⠋⣠⡿⠁⠀⠀⠁⠲⢈⣿⣿⣷⣤⣄⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢦⡀⠤⡄⠀⠀⠀⠀⠉⡻⢿⣧⣿⣿⡟⢋⣤⡾⠋⠀⠀⠀⠀⠘⠛⢺⣿⣿⣿⣿⣿⣷⣤⣤',
        '⡀⠀⣀⣀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢦⣈⣳⣦⣤⣤⣿⣿⣿⠟⢋⣡⣶⣿⠋⢀⠀⠀⠀⡀⠀⠀⢀⡌⠘⣿⣿⣿⣿⣿⣿⣿',
    },
    {
        '⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⢶⡲⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠑⡌⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⢣⡀⣆⠀⠘⣎⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣟⣇⢀⠈⢾⣧⡀⠀⠀⠀⣀⣀⠀⠀⠀⣀⣀⡀⠀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⢠⠞⣉⣲⣞⣿⡙⠋⠀⠀⣿⡏⠉⣉⣭⠁⠀⠉⠉⠁⠀⠄⠈⢁⣠⠞⠙⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⢠⡴⠚⠉⠀⢉⣉⡛⠉⠉⢲⣶⣾⠟⣿⠀⢠⣒⠒⠒⢢⠄⠀⠀⠀⣀⡞⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⣴⠾⢅⣀⣀⠤⠤⣄⣉⣀⡠⠔⠋⠀⢀⣴⠯⢤⣀⣈⡩⠥⠤⣀⡠⠤⣞⠁⠀⢀⠤⡀⠳⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠻⣄⠀⠠⢴⡄⠀⠀⠀⠈⠷⣆⣐⣶⠟⠁⠀⠀⠀⣀⣤⠖⠒⡦⢄⡀⢘⡆⢀⠏⠀⡷⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⠀⠀⠀',
        '⠀⢨⣷⢁⣸⠄⢼⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢾⣀⡨⠧⠴⢇⡀⠉⠸⡀⠈⠣⠴⠃⠀⢷⡀⠀⠀⠀⠀⠀⡠⢚⡅⡇⠀⠀⠀',
        '⠀⣧⣞⣩⣤⡀⠀⠈⠣⡀⠀⠀⠀⠀⠀⠀⠀⢠⠞⠁⠀⠀⢀⣀⡈⢆⠀⠱⡄⠀⠀⣤⡆⠀⢻⣿⠟⠉⠛⢿⣤⣿⠀⡇⣀⣀⠀',
        '⠀⢸⢾⣿⣿⡇⠀⠀⢠⠇⠀⠀⠀⠀⠀⠀⠀⢾⠀⠀⠀⠸⣿⣿⣿⡼⠀⠀⢸⠀⠀⠙⠃⠀⣸⠃⠀⠀⠀⢀⣿⡏⢀⣿⣿⠹⢳',
        '⠀⠈⠲⢍⡁⢀⣀⠴⠋⡠⢂⡄⠀⠀⠀⠀⠀⠈⠳⣤⣀⣀⣨⠽⢛⡁⠀⠀⠘⣆⠀⠀⢠⣾⡇⠀⠀⢀⣤⣾⣿⡇⢸⠛⡧⢆⡎',
        '⠀⠀⠀⠀⠹⣏⣁⠴⠊⠀⡸⠀⠀⠀⠀⠀⠀⠀⠀⠈⠒⠒⠒⠊⠉⠀⠀⠈⠀⠈⢢⠀⣿⠘⡷⠒⠒⠻⢷⣾⣿⣇⠘⠋⣀⡎⠀',
        '⠀⠀⠀⠀⣴⠉⠀⠀⣀⠞⠁⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡄⠈⠛⠁⠀⣴⡀⠀⡇⠀⣿⣿⣟⠙⣿⠀',
        '⠀⠀⠀⠀⠈⠒⠚⡏⠁⠀⠀⠀⠀⠀⢀⣤⣶⣿⣿⣿⠿⠿⠟⠀⠀⠀⢀⣀⡀⠀⠀⠈⠓⣄⠀⠀⠉⠀⠀⣣⠀⢸⣿⣿⣶⣿⠇',
        '⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⢠⡾⣿⠿⠛⠋⣁⣀⠤⠤⠒⠃⠀⠀⠣⠄⠀⠀⠀⠀⠀⠸⣄⣀⡀⠀⠀⢧⠀⠀⣿⠿⠋⠁⠀',
        '⠀⠀⠀⠀⠀⠀⠈⡇⠀⠀⠀⡰⠻⣉⠠⠔⠚⠯⣁⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠏⠉⠀⠀⠀⢱⣴⣴⡾⠖⠊⠁⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠘⢆⠀⢰⠁⠀⠀⠀⠀⠀⢀⣤⣿⣶⣶⣦⣤⠖⠒⠒⠒⠒⠒⠒⠒⢲⣶⣾⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠈⠳⠇⠀⠀⠀⠀⠀⠀⢈⡿⢋⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠛⢿⢋⡿⠿⠿⠁⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⢏⣾⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣏⣸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣾⣿⣶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⠿⠒⠲⣿⣧⡀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⣿⣿⠿⠿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣘⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    },
    {
        '⠀⠀⠀⠀⠀⢀⠤⠐⠒⠀⠀⠀⠒⠒⠤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⡠⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⡔⠁⠀⠀⠀⠀⠀⢰⠁⠀⠀⠀⠀⠀⠀⠈⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⢰⠀⠀⠀⠀⠀⠀⠀⣾⠀⠀⠔⠒⠢⠀⠀⠀⢼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⡆⠀⠀⠀⠀⠀⠀⠀⠸⣆⠀⠀⠙⠀⠀⠠⠐⠚⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠇⠀⠀⠀⠀⠀⠀⠀⠀⢻⠀⠀⠀⠀⠀⠀⡄⢠⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀',
        '⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⣀⣀⡠⡌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⢄⣲⣬⣶⣿⣿⡇⡇⠀',
        '⠀⠀⠆⠀⠀⠀⠀⠀⠀⠀⠘⡆⠀⠀⢀⣀⡀⢠⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⢴⣾⣶⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀',
        '⠀⠀⢸⠀⠀⠀⠀⠠⢄⠀⠀⢣⠀⠀⠑⠒⠂⡌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⢿⣿⣿⣿⣿⣿⣿⣿⡇⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠤⡀⠑⠀⠀⠀⡘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⣡⣿⣿⣿⣿⣿⣿⣿⣇⠀',
        '⠀⠀⢀⡄⠀⠀⠀⠀⠀⠀⠀⠈⢑⠖⠒⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣴⣿⣿⣿⡟⠁⠈⠛⠿⣿⠀',
        '⠀⣰⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢈⣾⣿⣿⣿⠏⠀⠀⠀⠀⠀⠈⠀',
        '⠈⣿⣿⣿⣿⣷⡤⣀⡀⠀⠀⢀⠎⣦⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣢⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠘⣿⣿⣿⣿⣿⣄⠈⢒⣤⡎⠀⢸⣿⣿⣿⣷⣶⣤⣄⣀⠀⠀⠀⢠⣽⣿⠿⠿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠹⣿⣿⣿⣿⣿⣾⠛⠉⣿⣦⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡗⣰⣿⣿⣿⠀⠀⣿⠀⠀⠀⠀⠀⠀⣀⡀⠀⠀',
        '⠀⠀⡰⠋⠉⠉⠉⣿⠉⠀⠀⠉⢹⡿⠋⠉⠉⠉⠛⢿⣿⠉⠉⠋⠉⠉⠻⣿⠀⠀⣿⠞⠉⢉⣿⠚⠉⠉⠉⣿⠀',
        '⠀⠀⢧⠀⠈⠛⠿⣟⢻⠀⠀⣿⣿⠁⠀⣾⣿⣧⠀⠘⣿⠀⠀⣾⣿⠀⠀⣿⠀⠀⠋⠀⢰⣿⣿⡀⠀⠛⠻⣟⠀',
        '⠀⠀⡞⠿⠶⠄⠀⢸⢸⠀⠀⠿⢿⡄⠀⠻⠿⠇⠀⣸⣿⠀⠀⣿⣿⠀⠀⣿⠀⠀⣶⡀⠈⢻⣿⠿⠶⠆⠀⢸⡇',
        '⠀⠀⠧⢤⣤⣤⠴⠋⠈⠦⣤⣤⠼⠙⠦⢤⣤⡤⠶⠋⠹⠤⠤⠿⠿⠤⠤⠿⠤⠤⠿⠳⠤⠤⠽⢤⣤⣤⠴⠟⠀',
    },
}

math.randomseed(os.time())
theme.section.header.val = artworks[math.random(1, #artworks)]

theme.section.buttons.val = {
    theme.button("SPC H", "Harpoon Menu"),
    theme.button("SPC f f", "Find File"),
    theme.button("SPC f g", "Live Grep"),
    theme.button("SPC f b", "File Browser"),
}

theme.section.header.opts.hl = "AlphaHeader"

theme.section.footer.val = {
    "",
    "",
    "",
    "Have fun with neovim!",
}
theme.section.footer.opts.hl = "AlphaFooter"

require("alpha").setup(theme.config)
