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

class VBoxManager.Application : Granite.Application {
    public static VBoxManager.MainWindow main_window {get;private set;default = null;}
    public static VBoxManager.Application instance;

    construct {
        // Application info
        build_data_dir = Build.DATADIR;
        build_pkg_data_dir = Build.PKG_DATADIR;
        build_release_name = Build.RELEASE_NAME;
        build_version = Build.VERSION;
        build_version_info = Build.VERSION_INFO;

        program_name = "eVirtualboxManager";
        exec_name = "com.github.damienlniata.eos-virtualbox-manager";

        app_copyright = "2017";
        application_id = "com.github.damienlniata.eos-virtualbox-manager";
        app_icon = "eVirtualboxManager";
        app_launcher = "com.github.damienlniata.eos-virtualbox-manager.desktop";
        app_years = "2017";

        main_url = "https://github.com/damienlniata/eos-virtualbox-manager";
        bug_url = "https://github.com/damienlniata/eos-virtualbox-manager";
        translate_url = "https://github.com/damienlniata/eos-virtualbox-manager";
        about_authors = {"Damien Leroy <damien.leroy@outlook.fr>",null};
        help_url = "https://github.com/damienlniata/eos-virtualbox-manager";
        about_artists = {"Damien Leroy <damien.leroy@outlook.fr>", null};
        about_documenters = { "Damien Leroy <damien.leroy@outlook.fr>", null };
        about_license_type = Gtk.License.GPL_3_0;

        //this.set_flags (ApplicationFlags.HANDLES_COMMAND_LINE);
    }

    public Application () {
        instance = this;
    }

    public override void activate () {
        if (main_window == null)
            initialize ();
        else if (!main_window.visible)
            main_window.show ();
    }

    public void initialize () {
        debug("+initialize()");        
        main_window = new VBoxManager.MainWindow();
        debug("-initialize()");        
    }

}