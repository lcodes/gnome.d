// Generated by gnome-h2d.rb <http://github.com/ddude/gnome.d>.

module gio.unixcredentialsmessage;

/* GIO - GLib Input, Output and Streaming Library
 *
 * Copyright (C) 2010 Red Hat, Inc.
 * Copyright (C) 2009 Codethink Limited
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
 * Authors: David Zeuthen <davidz@redhat.com>
 */



public import gio.gio;

extern(C):

//#define G_TYPE_UNIX_CREDENTIALS_MESSAGE         (g_unix_credentials_message_get_type ())
//#define G_UNIX_CREDENTIALS_MESSAGE(o)           (G_TYPE_CHECK_INSTANCE_CAST ((o), G_TYPE_UNIX_CREDENTIALS_MESSAGE, GUnixCredentialsMessage))
//#define G_UNIX_CREDENTIALS_MESSAGE_CLASS(c)     (G_TYPE_CHECK_CLASS_CAST ((c), G_TYPE_UNIX_CREDENTIALS_MESSAGE, GUnixCredentialsMessageClass))
//#define G_IS_UNIX_CREDENTIALS_MESSAGE(o)        (G_TYPE_CHECK_INSTANCE_TYPE ((o), G_TYPE_UNIX_CREDENTIALS_MESSAGE))
//#define G_IS_UNIX_CREDENTIALS_MESSAGE_CLASS(c)  (G_TYPE_CHECK_CLASS_TYPE ((c), G_TYPE_UNIX_CREDENTIALS_MESSAGE))
//#define G_UNIX_CREDENTIALS_MESSAGE_GET_CLASS(o) (G_TYPE_INSTANCE_GET_CLASS ((o), G_TYPE_UNIX_CREDENTIALS_MESSAGE, GUnixCredentialsMessageClass))

struct _GUnixCredentialsMessagePrivate;
alias _GUnixCredentialsMessagePrivate* GUnixCredentialsMessagePrivate;
//struct _GUnixCredentialsMessageClass    GUnixCredentialsMessageClass;

/**
 * GUnixCredentialsMessageClass:
 *
 * Class structure for #GUnixCredentialsMessage.
 *
 * Since: 2.26
 */
struct GUnixCredentialsMessageClass {
  GSocketControlMessageClass parent_class;

  /*< private >*/

  /* Padding for future expansion */
  void function() _g_reserved1;
  void function() _g_reserved2;
};

/**
 * GUnixCredentialsMessage:
 *
 * The #GUnixCredentialsMessage structure contains only private data
 * and should only be accessed using the provided API.
 *
 * Since: 2.26
 */
struct GUnixCredentialsMessage {
  GSocketControlMessage parent_instance;
  GUnixCredentialsMessagePrivate *priv;
};

GType                  g_unix_credentials_message_get_type             () pure;
GSocketControlMessage *g_unix_credentials_message_new                  ();
GSocketControlMessage *g_unix_credentials_message_new_with_credentials (GCredentials *credentials);
GCredentials          *g_unix_credentials_message_get_credentials      (GUnixCredentialsMessage *message);

gboolean               g_unix_credentials_message_is_supported         ();




