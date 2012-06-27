// Generated by gnome-h2d.rb <http://github.com/ddude/gnome.d>.

module gio.networkmonitornetlink;

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



public import gio.networkmonitorbase;

extern(C):

//#define G_TYPE_NETWORK_MONITOR_NETLINK         (_g_network_monitor_netlink_get_type ())
//#define G_NETWORK_MONITOR_NETLINK(o)           (G_TYPE_CHECK_INSTANCE_CAST ((o), G_TYPE_NETWORK_MONITOR_NETLINK, GNetworkMonitorNetlink))
//#define G_NETWORK_MONITOR_NETLINK_CLASS(k)     (G_TYPE_CHECK_CLASS_CAST((k), G_TYPE_NETWORK_MONITOR_NETLINK, GNetworkMonitorNetlinkClass))
//#define G_IS_NETWORK_MONITOR_NETLINK(o)        (G_TYPE_CHECK_INSTANCE_TYPE ((o), G_TYPE_NETWORK_MONITOR_NETLINK))
//#define G_IS_NETWORK_MONITOR_NETLINK_CLASS(k)  (G_TYPE_CHECK_CLASS_TYPE ((k), G_TYPE_NETWORK_MONITOR_NETLINK))
//#define G_NETWORK_MONITOR_NETLINK_GET_CLASS(o) (G_TYPE_INSTANCE_GET_CLASS ((o), G_TYPE_NETWORK_MONITOR_NETLINK, GNetworkMonitorNetlinkClass))

//struct _GNetworkMonitorNetlink        GNetworkMonitorNetlink;
//struct _GNetworkMonitorNetlinkClass   GNetworkMonitorNetlinkClass;
struct _GNetworkMonitorNetlinkPrivate;
alias _GNetworkMonitorNetlinkPrivate* GNetworkMonitorNetlinkPrivate;

struct GNetworkMonitorNetlink {
  GNetworkMonitorBase parent_instance;

  GNetworkMonitorNetlinkPrivate *priv;
};

struct GNetworkMonitorNetlinkClass {
  GNetworkMonitorBaseClass parent_class;

  /*< private >*/
  /* Padding for future expansion */
  gpointer padding[8];
};

GType _g_network_monitor_netlink_get_type ();



