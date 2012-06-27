// Generated by gnome-h2d.rb <http://github.com/ddude/gnome.d>.

module gio.tlsfiledatabase;

/* GIO - GLib Input, Output and Streaming Library
 *
 * Copyright © 2010 Collabora, Ltd.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation; either version 2 of the licence or (at
 * your option) any later version.
 *
 * See the included COPYING file for more information.
 *
 * Author: Stef Walter <stefw@collabora.co.uk>
 */

/+
#if !defined (__GIO_GIO_H_INSIDE__) && !defined (GIO_COMPILATION)
#error "Only <gio/gio.h> can be included directly."
//#endif
+/



public import gio.types;

extern(C):

//#define G_TYPE_TLS_FILE_DATABASE                (g_tls_file_database_get_type ())
//#define G_TLS_FILE_DATABASE(inst)               (G_TYPE_CHECK_INSTANCE_CAST ((inst), G_TYPE_TLS_FILE_DATABASE, GTlsFileDatabase))
//#define G_IS_TLS_FILE_DATABASE(inst)            (G_TYPE_CHECK_INSTANCE_TYPE ((inst), G_TYPE_TLS_FILE_DATABASE))
//#define G_TLS_FILE_DATABASE_GET_INTERFACE(inst) (G_TYPE_INSTANCE_GET_INTERFACE ((inst), G_TYPE_TLS_FILE_DATABASE, GTlsFileDatabaseInterface))

//struct _GTlsFileDatabaseInterface GTlsFileDatabaseInterface;

/**
 * GTlsFileDatabaseInterface:
 * @g_iface: The parent interface.
 *
 * Provides an interface for #GTlsFileDatabase implementations.
 *
 */
struct GTlsFileDatabaseInterface {
  GTypeInterface g_iface;

  /*< private >*/
  /* Padding for future expansion */
  gpointer padding[8];
};

GType                        g_tls_file_database_get_type              () pure;

GTlsDatabase*                g_tls_file_database_new                   (const(gchar)*  anchors,
                                                                        GError      **error);



//#endif /* __G_TLS_FILE_DATABASE_H___ */