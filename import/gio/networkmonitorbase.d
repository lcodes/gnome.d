// Generated by gnome-h2d.rb <http://github.com/ddude/gnome.d>.

module gio.networkmonitorbase;

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



public import gio.types;

extern(C):

//#define G_TYPE_NETWORK_MONITOR_BASE         (g_network_monitor_base_get_type ())
//#define G_NETWORK_MONITOR_BASE(o)           (G_TYPE_CHECK_INSTANCE_CAST ((o), G_TYPE_NETWORK_MONITOR_BASE, GNetworkMonitorBase))
//#define G_NETWORK_MONITOR_BASE_CLASS(k)     (G_TYPE_CHECK_CLASS_CAST((k), G_TYPE_NETWORK_MONITOR_BASE, GNetworkMonitorBaseClass))
//#define G_IS_NETWORK_MONITOR_BASE(o)        (G_TYPE_CHECK_INSTANCE_TYPE ((o), G_TYPE_NETWORK_MONITOR_BASE))
//#define G_IS_NETWORK_MONITOR_BASE_CLASS(k)  (G_TYPE_CHECK_CLASS_TYPE ((k), G_TYPE_NETWORK_MONITOR_BASE))
//#define G_NETWORK_MONITOR_BASE_GET_CLASS(o) (G_TYPE_INSTANCE_GET_CLASS ((o), G_TYPE_NETWORK_MONITOR_BASE, GNetworkMonitorBaseClass))

//struct _GNetworkMonitorBase        GNetworkMonitorBase;
//struct _GNetworkMonitorBaseClass   GNetworkMonitorBaseClass;
struct _GNetworkMonitorBasePrivate;
alias _GNetworkMonitorBasePrivate* GNetworkMonitorBasePrivate;

struct GNetworkMonitorBase {
  GObject parent_instance;

  GNetworkMonitorBasePrivate *priv;
};

struct GNetworkMonitorBaseClass {
  GObjectClass parent_class;

  /*< private >*/
  /* Padding for future expansion */
  gpointer padding[8];
};

GType g_network_monitor_base_get_type ();

/*< protected >*/
/+ GLIB_AVAILABLE_IN_2_32 +/
void g_network_monitor_base_add_network    (GNetworkMonitorBase  *monitor,
					    GInetAddressMask     *network);
/+ GLIB_AVAILABLE_IN_2_32 +/
void g_network_monitor_base_remove_network (GNetworkMonitorBase  *monitor,
					    GInetAddressMask     *network);
void g_network_monitor_base_set_networks   (GNetworkMonitorBase  *monitor,
					    GInetAddressMask    **networks,
					    gint                  length);




