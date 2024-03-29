// Generated by gnome-h2d.rb <http://github.com/ddude/gnome.d>.

module gio.win32outputstream;

/* GIO - GLib Input, Output and Streaming Library
 *
 * Copyright (C) 2006-2010 Red Hat, Inc.
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
 * Author: Tor Lillqvist <tml@iki.fi>
 */



public import gio.gio;

extern(C):

//#define G_TYPE_WIN32_OUTPUT_STREAM         (g_win32_output_stream_get_type ())
//#define G_WIN32_OUTPUT_STREAM(o)           (G_TYPE_CHECK_INSTANCE_CAST ((o), G_TYPE_WIN32_OUTPUT_STREAM, GWin32OutputStream))
//#define G_WIN32_OUTPUT_STREAM_CLASS(k)     (G_TYPE_CHECK_CLASS_CAST((k), G_TYPE_WIN32_OUTPUT_STREAM, GWin32OutputStreamClass))
//#define G_IS_WIN32_OUTPUT_STREAM(o)        (G_TYPE_CHECK_INSTANCE_TYPE ((o), G_TYPE_WIN32_OUTPUT_STREAM))
//#define G_IS_WIN32_OUTPUT_STREAM_CLASS(k)  (G_TYPE_CHECK_CLASS_TYPE ((k), G_TYPE_WIN32_OUTPUT_STREAM))
//#define G_WIN32_OUTPUT_STREAM_GET_CLASS(o) (G_TYPE_INSTANCE_GET_CLASS ((o), G_TYPE_WIN32_OUTPUT_STREAM, GWin32OutputStreamClass))

/**
 * GWin32OutputStream:
 *
 * Implements #GOutputStream for outputting to Windows file handles
 **/
//struct _GWin32OutputStream         GWin32OutputStream;
//struct _GWin32OutputStreamClass    GWin32OutputStreamClass;
struct _GWin32OutputStreamPrivate;
alias _GWin32OutputStreamPrivate* GWin32OutputStreamPrivate;

struct GWin32OutputStream {
  GOutputStream parent_instance;

  /*< private >*/
  GWin32OutputStreamPrivate *priv;
};

struct GWin32OutputStreamClass {
  GOutputStreamClass parent_class;

  /*< private >*/
  /* Padding for future expansion */
  void function() _g_reserved1;
  void function() _g_reserved2;
  void function() _g_reserved3;
  void function() _g_reserved4;
  void function() _g_reserved5;
};

GType           g_win32_output_stream_get_type         () pure;

GOutputStream * g_win32_output_stream_new              (void               *handle,
							gboolean            close_handle);
void            g_win32_output_stream_set_close_handle (GWin32OutputStream *stream,
							gboolean           close_handle);
gboolean        g_win32_output_stream_get_close_handle (GWin32OutputStream *stream);
void           *g_win32_output_stream_get_handle       (GWin32OutputStream *stream);



