// Generated by gnome-h2d.rb <http://github.com/ddude/gnome.d>.

module gio.dbusnamewatching;

/* GDBus - GLib D-Bus Library
 *
 * Copyright (C) 2008-2010 Red Hat, Inc.
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
 *
 * Author: David Zeuthen <davidz@redhat.com>
 */

/+
#if !defined (__GIO_GIO_H_INSIDE__) && !defined (GIO_COMPILATION)
#error "Only <gio/gio.h> can be included directly."
//#endif
+/



public import gio.types;

extern(C):

/**
 * GBusNameAppearedCallback:
 * @connection: The #GDBusConnection the name is being watched on.
 * @name: The name being watched.
 * @name_owner: Unique name of the owner of the name being watched.
 * @user_data: User data passed to g_bus_watch_name().
 *
 * Invoked when the name being watched is known to have to have a owner.
 *
 * Since: 2.26
 */
alias void function(GDBusConnection *connection,
                                          const(gchar)*     name,
                                          const(gchar)*     name_owner,
                                          gpointer         user_data) GBusNameAppearedCallback;

/**
 * GBusNameVanishedCallback:
 * @connection: The #GDBusConnection the name is being watched on.
 * @name: The name being watched.
 * @user_data: User data passed to g_bus_watch_name().
 *
 * Invoked when the name being watched is known not to have to have a owner.
 *
 * Since: 2.26
 */
alias void function(GDBusConnection *connection,
                                          const(gchar)*     name,
                                          gpointer         user_data) GBusNameVanishedCallback;


guint g_bus_watch_name               (GBusType                  bus_type,
                                      const(gchar)*              name,
                                      GBusNameWatcherFlags      flags,
                                      GBusNameAppearedCallback  name_appeared_handler,
                                      GBusNameVanishedCallback  name_vanished_handler,
                                      gpointer                  user_data,
                                      GDestroyNotify            user_data_free_func);
guint g_bus_watch_name_on_connection (GDBusConnection          *connection,
                                      const(gchar)*              name,
                                      GBusNameWatcherFlags      flags,
                                      GBusNameAppearedCallback  name_appeared_handler,
                                      GBusNameVanishedCallback  name_vanished_handler,
                                      gpointer                  user_data,
                                      GDestroyNotify            user_data_free_func);
guint g_bus_watch_name_with_closures (GBusType                  bus_type,
                                      const(gchar)*              name,
                                      GBusNameWatcherFlags      flags,
                                      GClosure                 *name_appeared_closure,
                                      GClosure                 *name_vanished_closure);
guint g_bus_watch_name_on_connection_with_closures (
                                      GDBusConnection          *connection,
                                      const(gchar)*              name,
                                      GBusNameWatcherFlags      flags,
                                      GClosure                 *name_appeared_closure,
                                      GClosure                 *name_vanished_closure);
void  g_bus_unwatch_name             (guint                     watcher_id);




