// Generated by gnome-h2d.rb <http://github.com/ddude/gnome.d>.

module gio.socketinputstream;

/* GIO - GLib Input, Output and Streaming Library
 *
 * Copyright © 2008 Christian Kellner, Samuel Cormier-Iijima
 * Copyright © 2009 Codethink Limited
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation; either version 2 of the licence or (at
 * your option) any later version.
 *
 * See the included COPYING file for more information.
 *
 * Authors: Christian Kellner <gicmo@gnome.org>
 *          Samuel Cormier-Iijima <sciyoshi@gmail.com>
 *          Ryan Lortie <desrt@desrt.ca>
 */



public import gio.inputstream;
public import gio.socket;

extern(C):

//#define G_TYPE_SOCKET_INPUT_STREAM                          (_g_socket_input_stream_get_type ())
//#define G_SOCKET_INPUT_STREAM(inst)                         (G_TYPE_CHECK_INSTANCE_CAST ((inst),                     
//                                                             G_TYPE_SOCKET_INPUT_STREAM, GSocketInputStream))
//#define G_SOCKET_INPUT_STREAM_CLASS(class)                  (G_TYPE_CHECK_CLASS_CAST ((class),                       
//                                                             G_TYPE_SOCKET_INPUT_STREAM, GSocketInputStreamClass))
//#define G_IS_SOCKET_INPUT_STREAM(inst)                      (G_TYPE_CHECK_INSTANCE_TYPE ((inst),                     
//                                                             G_TYPE_SOCKET_INPUT_STREAM))
//#define G_IS_SOCKET_INPUT_STREAM_CLASS(class)               (G_TYPE_CHECK_CLASS_TYPE ((class),                       
//                                                             G_TYPE_SOCKET_INPUT_STREAM))
//#define G_SOCKET_INPUT_STREAM_GET_CLASS(inst)               (G_TYPE_INSTANCE_GET_CLASS ((inst),                      
//                                                             G_TYPE_SOCKET_INPUT_STREAM, GSocketInputStreamClass))

struct _GSocketInputStreamPrivate;
alias _GSocketInputStreamPrivate* GSocketInputStreamPrivate;
//struct _GSocketInputStreamClass                     GSocketInputStreamClass;
//struct _GSocketInputStream                          GSocketInputStream;

struct GSocketInputStreamClass {
  GInputStreamClass parent_class;
};

struct GSocketInputStream {
  GInputStream parent_instance;
  GSocketInputStreamPrivate *priv;
};

GType                   _g_socket_input_stream_get_type                  () pure;
GSocketInputStream *    _g_socket_input_stream_new                      (GSocket *socket);



//#endif /* __G_SOCKET_INPUT_STREAM_H___ */
