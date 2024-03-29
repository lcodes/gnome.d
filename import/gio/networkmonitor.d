// Generated by gnome-h2d.rb <http://github.com/ddude/gnome.d>.

module gio.networkmonitor;

/* GIO - GLib Input, Output and Streaming Library
 *
 * Copyright 2011 Red Hat, Inc.
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
 * G_NETWORK_MONITOR_EXTENSION_POINT_NAME:
 *
 * Extension point for network status monitoring functionality.
 * See <link linkend="extending-gio">Extending GIO</link>.
 *
 * Since: 2.30
 */
//#define G_NETWORK_MONITOR_EXTENSION_POINT_NAME "gio-network-monitor"

//#define G_TYPE_NETWORK_MONITOR         (g_network_monitor_get_type ())
//#define G_NETWORK_MONITOR(o)               (G_TYPE_CHECK_INSTANCE_CAST ((o), G_TYPE_NETWORK_MONITOR, GNetworkMonitor))
//#define G_IS_NETWORK_MONITOR(o)            (G_TYPE_CHECK_INSTANCE_TYPE ((o), G_TYPE_NETWORK_MONITOR))
//#define G_NETWORK_MONITOR_GET_INTERFACE(o) (G_TYPE_INSTANCE_GET_INTERFACE ((o), G_TYPE_NETWORK_MONITOR, GNetworkMonitorInterface))

//struct _GNetworkMonitorInterface GNetworkMonitorInterface;

struct GNetworkMonitorInterface {
  GTypeInterface g_iface;

  void     function(GNetworkMonitor      *monitor,
				gboolean              available) network_changed;

  gboolean function(GNetworkMonitor      *monitor,
				GSocketConnectable   *connectable,
				GCancellable         *cancellable,
				GError              **error) can_reach;
  void     function(GNetworkMonitor      *monitor,
				GSocketConnectable   *connectable,
				GCancellable         *cancellable,
				GAsyncReadyCallback   callback,
				gpointer              user_data) can_reach_async;
  gboolean function(GNetworkMonitor      *monitor,
				GAsyncResult         *result,
				GError              **error) can_reach_finish;
};

/+ GLIB_AVAILABLE_IN_2_32 +/
GType            g_network_monitor_get_type              () pure;
/+ GLIB_AVAILABLE_IN_2_32 +/
GNetworkMonitor *g_network_monitor_get_default           ();

gboolean         g_network_monitor_get_network_available (GNetworkMonitor     *monitor);

gboolean         g_network_monitor_can_reach             (GNetworkMonitor     *monitor,
							  GSocketConnectable  *connectable,
							  GCancellable        *cancellable,
							  GError             **error);
void             g_network_monitor_can_reach_async       (GNetworkMonitor     *monitor,
							  GSocketConnectable  *connectable,
							  GCancellable        *cancellable,
							  GAsyncReadyCallback  callback,
							  gpointer             user_data);
gboolean         g_network_monitor_can_reach_finish      (GNetworkMonitor     *monitor,
							  GAsyncResult        *result,
							  GError             **error);




