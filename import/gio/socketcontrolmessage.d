// Generated by gnome-h2d.rb <http://github.com/ddude/gnome.d>.

module gio.socketcontrolmessage;

/* GIO - GLib Input, Output and Streaming Library
 *
 * Copyright © 2009 Codethink Limited
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

//#define G_TYPE_SOCKET_CONTROL_MESSAGE                       (g_socket_control_message_get_type ())
//#define G_SOCKET_CONTROL_MESSAGE(inst)                      (G_TYPE_CHECK_INSTANCE_CAST ((inst),                     
//                                                             G_TYPE_SOCKET_CONTROL_MESSAGE,                          
//                                                             GSocketControlMessage))
//#define G_SOCKET_CONTROL_MESSAGE_CLASS(class)               (G_TYPE_CHECK_CLASS_CAST ((class),                       
//                                                             G_TYPE_SOCKET_CONTROL_MESSAGE,                          
//                                                             GSocketControlMessageClass))
//#define G_IS_SOCKET_CONTROL_MESSAGE(inst)                   (G_TYPE_CHECK_INSTANCE_TYPE ((inst),                     
//                                                             G_TYPE_SOCKET_CONTROL_MESSAGE))
//#define G_IS_SOCKET_CONTROL_MESSAGE_CLASS(class)            (G_TYPE_CHECK_CLASS_TYPE ((class),                       
//                                                             G_TYPE_SOCKET_CONTROL_MESSAGE))
//#define G_SOCKET_CONTROL_MESSAGE_GET_CLASS(inst)            (G_TYPE_INSTANCE_GET_CLASS ((inst),                      
//                                                             G_TYPE_SOCKET_CONTROL_MESSAGE,                          
//                                                             GSocketControlMessageClass))

struct _GSocketControlMessagePrivate;
alias _GSocketControlMessagePrivate* GSocketControlMessagePrivate;
//struct _GSocketControlMessageClass                  GSocketControlMessageClass;

/**
 * GSocketControlMessageClass:
 * @get_size: gets the size of the message.
 * @get_level: gets the protocol of the message.
 * @get_type: gets the protocol specific type of the message.
 * @serialize: Writes out the message data.
 * @deserialize: Tries to deserialize a message.
 **/

struct GSocketControlMessageClass {
  GObjectClass parent_class;

  gsize                  function(GSocketControlMessage  *message) get_size;
  int                    function(GSocketControlMessage  *message) get_level;
  int                    function(GSocketControlMessage  *message) get_type;
  void                   function(GSocketControlMessage  *message,
					gpointer                data) serialize;
  GSocketControlMessage *function(int                   level,
					  int                   type,
					  gsize                 size,
					  gpointer              data) deserialize;

  /*< private >*/

  /* Padding for future expansion */
  void function() _g_reserved1;
  void function() _g_reserved2;
  void function() _g_reserved3;
  void function() _g_reserved4;
  void function() _g_reserved5;
};

struct GSocketControlMessage {
  GObject parent_instance;
  GSocketControlMessagePrivate *priv;
};

GType                  g_socket_control_message_get_type     () pure;
gsize                  g_socket_control_message_get_size     (GSocketControlMessage *message);
int                    g_socket_control_message_get_level    (GSocketControlMessage *message);
int                    g_socket_control_message_get_msg_type (GSocketControlMessage *message);
void                   g_socket_control_message_serialize    (GSocketControlMessage *message,
							      gpointer               data);
GSocketControlMessage *g_socket_control_message_deserialize  (int                    level,
							      int                    type,
							      gsize                  size,
							      gpointer               data);





