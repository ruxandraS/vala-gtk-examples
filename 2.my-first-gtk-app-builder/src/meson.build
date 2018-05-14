my_first_gtk_app_sources = [
  'main.vala',
  'window.vala',
]

my_first_gtk_app_deps = [
  dependency('gio-2.0', version: '>= 2.50'),
  dependency('gtk+-3.0', version: '>= 3.22'),
]

gnome = import('gnome')

my_first_gtk_app_sources += gnome.compile_resources('my-first-gtk-app-resources',
  'my-first-gtk-app.gresource.xml',
  c_name: 'my_first_gtk_app'
)

executable('my-first-gtk-app', my_first_gtk_app_sources,
  vala_args: '--target-glib=2.50',
  dependencies: my_first_gtk_app_deps,
  install: true,
)
