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

class VBoxManager.MainWindow : Gtk.Window {
    public MainWindow() {
        debug("Coucou");
        build_interface();
        this.show_all();
        Gtk.main();
    }

    private void build_interface () {
        set_window_properties ();
        create_child_widgets ();
    }

    private void create_child_widgets() {
        debug("+create_child_widgets()");
        var label_text = new Gtk.Label(_("Coucou"));
        this.add(label_text);        
        debug("-create_child_widgets()");
    }

    private void set_window_properties () {
        debug("+set_window_properties()");
        this.set_title (VBoxManager.Application.instance.program_name);
        this.set_size_request (500, 500);
        this.set_position (Gtk.WindowPosition.CENTER);
        this.resizable = true;
        this.destroy.connect (Gtk.main_quit);     
        debug("-set_window_properties()");
    }

}