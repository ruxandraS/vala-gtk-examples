using Gtk;

public class SimpleApp : Gtk.Application {
    static int
    main (string[] args) {
        Gtk.init (ref args);

        var window = new Window ();

        window.title = "My First GTK+ App";
        window.border_width = 10;
        window.window_position = WindowPosition.CENTER;
        window.set_default_size (300, 200);

        var label = new Label ("Hello World!");
        window.add(label);

        window.destroy.connect (Gtk.main_quit);

        window.show_all ();

        Gtk.main ();
        return 0;
    }
}
