// Generated by gnome-h2d.rb <http://github.com/ddude/gnome.d>.

module gio.socketservice;

/* GIO - GLib Input, Output and Streaming Library
 *
 * Copyright © 2009 Codethink Limited
 * Copyright © 2009 Red Hat, Inc
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
 *          Alexander Larsson <alexl@redhat.com>
 */

/+
#if !defined (__GIO_GIO_H_INSIDE__) && !defined (GIO_COMPILATION)
#error "Only <gio/gio.h> can be included directly."
//#endif
+/



public import gio.socketlistener;

extern(C):

//#define G_TYPE_SOCKET_SERVICE                               (g_socket_service_get_type ())
//#define G_SOCKET_SERVICE(inst)                              (G_TYPE_CHECK_INSTANCE_CAST ((inst),                     
//                                                             G_TYPE_SOCKET_SERVICE, GSocketService))
//#define G_SOCKET_SERVICE_CLASS(class)                       (G_TYPE_CHECK_CLASS_CAST ((class),                       
//                                                             G_TYPE_SOCKET_SERVICE, GSocketServiceClass))
//#define G_IS_SOCKET_SERVICE(inst)                           (G_TYPE_CHECK_INSTANCE_TYPE ((inst),                     
//                                                             G_TYPE_SOCKET_SERVICE))
//#define G_IS_SOCKET_SERVICE_CLASS(class)                    (G_TYPE_CHECK_CLASS_TYPE ((class),                       
//                                                             G_TYPE_SOCKET_SERVICE))
//#define G_SOCKET_SERVICE_GET_CLASS(inst)                    (G_TYPE_INSTANCE_GET_CLASS ((inst),                      
//                                                             G_TYPE_SOCKET_SERVICE, GSocketServiceClass))

struct _GSocketServicePrivate;
alias _GSocketServicePrivate* GSocketServicePrivate;
//struct _GSocketServiceClass                         GSocketServiceClass;

/**
 * GSocketServiceClass:
 * @incomming: signal emitted when new connections are accepted
 */
struct GSocketServiceClass {
  GSocketListenerClass parent_class;

  gboolean function(GSocketService    *service,
                         GSocketConnection *connection,
			 GObject           *source_object) incoming;

  /* Padding for future expansion */
  void function() _g_reserved1;
  void function() _g_reserved2;
  void function() _g_reserved3;
  void function() _g_reserved4;
  void function() _g_reserved5;
  void function() _g_reserved6;
};

struct GSocketService {
  GSocketListener parent_instance;
  GSocketServicePrivate *priv;
};

GType           g_socket_service_get_type  ();

GSocketService *g_socket_service_new       ();
void            g_socket_service_start     (GSocketService *service);
void            g_socket_service_stop      (GSocketService *service);
gboolean        g_socket_service_is_active (GSocketService *service);





