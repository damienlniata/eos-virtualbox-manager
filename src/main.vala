/*
* Copyright (c) 2011-2017 L2roy (https://yourwebsite.com)
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 2 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*
* Authored by: Damien Leroy <damien.leroy@outlook.fr>
*/

int main(string[] args) {
    set_log_level_by_args (ref args);

    Gtk.init (ref args);
    var app = new VBoxManager.Application ();
    app.run(args);

    return 0;
}

void set_log_level_by_args (ref unowned string[] args) {
    foreach (var arg in args) {
        if (arg == "--debug")
            Granite.Services.Logger.DisplayLevel = Granite.Services.LogLevel.DEBUG;
    }
}
