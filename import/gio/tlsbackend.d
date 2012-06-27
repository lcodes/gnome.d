// Generated by gnome-h2d.rb <http://github.com/ddude/gnome.d>.

module gio.tlsbackend;

/* GIO - GLib Input, Output and Streaming Library
 *
 * Copyright (C) 2010 Red Hat, Inc.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
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
 */

/+
#if !defined (__GIO_GIO_H_INSIDE__) && !defined (GIO_COMPILATION)
#error "Only <gio/gio.h> can be included directly."
//#endif
+/



public import gio.types;

extern(C):

/**
 * G_TLS_BACKEND_EXTENSION_POINT_NAME:
 *
 * Extension point for TLS functionality via #GTlsBackend.
 * See <link linkend="extending-gio">Extending GIO</link>.
 */
//#define G_TLS_BACKEND_EXTENSION_POINT_NAME "gio-tls-backend"

//#define G_TYPE_TLS_BACKEND               (g_tls_backend_get_type ())
//#define G_TLS_BACKEND(obj)               (G_TYPE_CHECK_INSTANCE_CAST ((obj), G_TYPE_TLS_BACKEND, GTlsBackend))
//#define G_IS_TLS_BACKEND(obj)	         (G_TYPE_CHECK_INSTANCE_TYPE ((obj), G_TYPE_TLS_BACKEND))
//#define G_TLS_BACKEND_GET_INTERFACE(obj) (G_TYPE_INSTANCE_GET_INTERFACE ((obj), G_TYPE_TLS_BACKEND, GTlsBackendInterface))

struct _GTlsBackend;
alias _GTlsBackend* GTlsBackend;
//struct _GTlsBackendInterface GTlsBackendInterface;

/**
 * GTlsBackendInterface:
 * @g_iface: The parent interface.
 * @supports_tls: returns whether the backend supports TLS.
 * @get_default_database: returns a default #GTlsDatabase instance.
 * @get_certificate_type: returns the #GTlsCertificate implementation type
 * @get_client_connection_type: returns the #GTlsClientConnection implementation type
 * @get_server_connection_type: returns the #GTlsServerConnection implementation type
 * @get_file_database_type: returns the #GTlsFileDatabase implementation type.
 *
 * Provides an interface for describing TLS-related types.
 *
 * Since: 2.28
 */
struct GTlsBackendInterface {
  GTypeInterface g_iface;

  /* methods */
  gboolean       function(GTlsBackend *backend) supports_tls;
  GType          function() get_certificate_type;
  GType          function() get_client_connection_type;
  GType          function() get_server_connection_type;
  GType          function() get_file_database_type;
  GTlsDatabase * function(GTlsBackend *backend) get_default_database;
};

GType          g_tls_backend_get_type                   () pure;

GTlsBackend *  g_tls_backend_get_default                ();

GTlsDatabase * g_tls_backend_get_default_database       (GTlsBackend *backend);

gboolean       g_tls_backend_supports_tls               (GTlsBackend *backend);

GType          g_tls_backend_get_certificate_type       (GTlsBackend *backend);
GType          g_tls_backend_get_client_connection_type (GTlsBackend *backend);
GType          g_tls_backend_get_server_connection_type (GTlsBackend *backend);
GType          g_tls_backend_get_file_database_type     (GTlsBackend *backend);



