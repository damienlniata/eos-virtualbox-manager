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

int main (string[] args) {
    Gtk.init (ref args);
    var window = new Gtk.Window ();
    window.title = _("Hello World!");
    window.set_border_width (12);
    window.set_position (Gtk.WindowPosition.CENTER);
    window.set_default_size (350, 70);
    window.destroy.connect (Gtk.main_quit);
    
    var vbox = new Gtk.Box (Gtk.Orientation.VERTICAL, 10);

    var button_hello = new Gtk.Button.with_label (_("Click me!"));
    button_hello.clicked.connect (() => {
        button_hello.label = _("Hello World!");
        button_hello.set_sensitive (false);
    });
    
    var label_text = new Gtk.Label(_("Coucou"));

    vbox.add(button_hello);
    vbox.add(label_text);

    window.add (vbox);
    window.show_all ();
    
    Gtk.main ();
    return 0;
}