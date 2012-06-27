// Generated by gnome-h2d.rb <http://github.com/ddude/gnome.d>.

module gio.application;

/*
 * Copyright © 2010 Codethink Limited
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation; either version 2 of the licence or (at
 * your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General
 * Public License along with this library; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place, Suite 330,
 * Boston, MA 02111-1307, USA.
 *
 * Authors: Ryan Lortie <desrt@desrt.ca>
 */

/+
#if !defined (__GIO_GIO_H_INSIDE__) && !defined (GIO_COMPILATION)
#error "Only <gio/gio.h> can be included directly."
//#endif
+/



public import gio.types;

extern(C):

//#define G_TYPE_APPLICATION                                  (g_application_get_type ())
//#define G_APPLICATION(inst)                                 (G_TYPE_CHECK_INSTANCE_CAST ((inst),                     
//                                                             G_TYPE_APPLICATION, GApplication))
//#define G_APPLICATION_CLASS(class)                          (G_TYPE_CHECK_CLASS_CAST ((class),                       
//                                                             G_TYPE_APPLICATION, GApplicationClass))
//#define G_IS_APPLICATION(inst)                              (G_TYPE_CHECK_INSTANCE_TYPE ((inst), G_TYPE_APPLICATION))
//#define G_IS_APPLICATION_CLASS(class)                       (G_TYPE_CHECK_CLASS_TYPE ((class), G_TYPE_APPLICATION))
//#define G_APPLICATION_GET_CLASS(inst)                       (G_TYPE_INSTANCE_GET_CLASS ((inst),                      
//                                                             G_TYPE_APPLICATION, GApplicationClass))

struct _GApplicationPrivate;
alias _GApplicationPrivate* GApplicationPrivate;
//struct _GApplicationClass                           GApplicationClass;

/**
 * GApplication:
 *
 * Since: 2.28
 */
struct GApplication {
  /*< private >*/
  GObject parent_instance;

  GApplicationPrivate *priv;
};

struct GApplicationClass {
  /*< private >*/
  GObjectClass parent_class;

  /*< public >*/
  /* signals */
  void                      function(GApplication              *application) startup;

  void                      function(GApplication              *application) activate;

  void                      function(GApplication              *application,
                                                     GFile                    **files,
                                                     gint                       n_files,
                                                     const(gchar)*               hint) open;

  int                       function(GApplication              *application,
                                                     GApplicationCommandLine   *command_line) command_line;

  /* vfuncs */
  gboolean                  function(GApplication              *application,
                                                     gchar                   ***arguments,
                                                     int                       *exit_status) local_command_line;

  void                      function(GApplication              *application,
                                                     GVariant                  *platform_data) before_emit;
  void                      function(GApplication              *application,
                                                     GVariant                  *platform_data) after_emit;
  void                      function(GApplication              *application,
                                                     GVariantBuilder           *builder) add_platform_data;
  void                      function(GApplication              *application) quit_mainloop;
  void                      function(GApplication              *application) run_mainloop;
  void                      function(GApplication              *application) shutdown;

  gboolean                  function(GApplication              *application,
                                                     GDBusConnection           *connection,
                                                     const(gchar)*               object_path,
                                                     GError                   **error) dbus_register;
  void                      function(GApplication              *application,
                                                     GDBusConnection           *connection,
                                                     const(gchar)*               object_path) dbus_unregister;

  /*< private >*/
  gpointer padding[9];
};

GType                   g_application_get_type                          () pure;

gboolean                g_application_id_is_valid                       (const(gchar)*              application_id);

GApplication *          g_application_new                               (const(gchar)*              application_id,
                                                                         GApplicationFlags         flags);

const(gchar)*            g_application_get_application_id                (GApplication             *application);
void                    g_application_set_application_id                (GApplication             *application,
                                                                         const(gchar)*              application_id);

/+ GLIB_AVAILABLE_IN_2_34 +/
GDBusConnection *       g_application_get_dbus_connection               (GApplication             *application);
/+ GLIB_AVAILABLE_IN_2_34 +/
const(gchar)*            g_application_get_dbus_object_path              (GApplication             *application);

guint                   g_application_get_inactivity_timeout            (GApplication             *application);
void                    g_application_set_inactivity_timeout            (GApplication             *application,
                                                                         guint                     inactivity_timeout);

GApplicationFlags       g_application_get_flags                         (GApplication             *application);
void                    g_application_set_flags                         (GApplication             *application,
                                                                         GApplicationFlags         flags);

/+ GLIB_DEPRECATED +/
void                    g_application_set_action_group                  (GApplication             *application,
                                                                         GActionGroup             *action_group);

gboolean                g_application_get_is_registered                 (GApplication             *application);
gboolean                g_application_get_is_remote                     (GApplication             *application);

gboolean                g_application_register                          (GApplication             *application,
                                                                         GCancellable             *cancellable,
                                                                         GError                  **error);

void                    g_application_hold                              (GApplication             *application);
void                    g_application_release                           (GApplication             *application);

void                    g_application_activate                          (GApplication             *application);

void                    g_application_open                              (GApplication             *application,
                                                                         GFile                   **files,
                                                                         gint                      n_files,
                                                                         const(gchar)*              hint);

int                     g_application_run                               (GApplication             *application,
                                                                         int                       argc,
                                                                         char                    **argv);

void                    g_application_quit                              (GApplication             *application);

/+ GLIB_AVAILABLE_IN_2_32 +/
GApplication *          g_application_get_default                       ();
/+ GLIB_AVAILABLE_IN_2_32 +/
void                    g_application_set_default                       (GApplication             *application);



