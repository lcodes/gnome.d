// Generated by gnome-h2d.rb <http://github.com/ddude/gnome.d>.

module gio.filemonitor;

/* GIO - GLib Input, Output and Streaming Library
 *
 * Copyright (C) 2006-2007 Red Hat, Inc.
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
 * Author: Alexander Larsson <alexl@redhat.com>
 */

/+
#if !defined (__GIO_GIO_H_INSIDE__) && !defined (GIO_COMPILATION)
#error "Only <gio/gio.h> can be included directly."
//#endif
+/



public import gio.types;

extern(C):

//#define G_TYPE_FILE_MONITOR         (g_file_monitor_get_type ())
//#define G_FILE_MONITOR(o)           (G_TYPE_CHECK_INSTANCE_CAST ((o), G_TYPE_FILE_MONITOR, GFileMonitor))
//#define G_FILE_MONITOR_CLASS(k)     (G_TYPE_CHECK_CLASS_CAST((k), G_TYPE_FILE_MONITOR, GFileMonitorClass))
//#define G_IS_FILE_MONITOR(o)        (G_TYPE_CHECK_INSTANCE_TYPE ((o), G_TYPE_FILE_MONITOR))
//#define G_IS_FILE_MONITOR_CLASS(k)  (G_TYPE_CHECK_CLASS_TYPE ((k), G_TYPE_FILE_MONITOR))
//#define G_FILE_MONITOR_GET_CLASS(o) (G_TYPE_INSTANCE_GET_CLASS ((o), G_TYPE_FILE_MONITOR, GFileMonitorClass))

//struct _GFileMonitorClass       GFileMonitorClass;
struct _GFileMonitorPrivate;
alias _GFileMonitorPrivate* GFileMonitorPrivate;

/**
 * GFileMonitor:
 *
 * Watches for changes to a file.
 **/
struct GFileMonitor {
  GObject parent_instance;

  /*< private >*/
  GFileMonitorPrivate *priv;
};

struct GFileMonitorClass {
  GObjectClass parent_class;

  /* Signals */
  void     function(GFileMonitor      *monitor,
                        GFile             *file,
                        GFile             *other_file,
                        GFileMonitorEvent  event_type) changed;

  /* Virtual Table */
  gboolean function(GFileMonitor      *monitor) cancel;

  /*< private >*/
  /* Padding for future expansion */
  void function() _g_reserved1;
  void function() _g_reserved2;
  void function() _g_reserved3;
  void function() _g_reserved4;
  void function() _g_reserved5;
};

GType    g_file_monitor_get_type       () pure;

gboolean g_file_monitor_cancel         (GFileMonitor      *monitor);
gboolean g_file_monitor_is_cancelled   (GFileMonitor      *monitor);
void     g_file_monitor_set_rate_limit (GFileMonitor      *monitor,
                                        gint               limit_msecs);


/* For implementations */
void     g_file_monitor_emit_event     (GFileMonitor      *monitor,
                                        GFile             *child,
                                        GFile             *other_file,
                                        GFileMonitorEvent  event_type);



