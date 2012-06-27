// Generated by gnome-h2d.rb <http://github.com/ddude/gnome.d>.

module gio.fileoutputstream;

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



public import gio.outputstream;

extern(C):

//#define G_TYPE_FILE_OUTPUT_STREAM         (g_file_output_stream_get_type ())
//#define G_FILE_OUTPUT_STREAM(o)           (G_TYPE_CHECK_INSTANCE_CAST ((o), G_TYPE_FILE_OUTPUT_STREAM, GFileOutputStream))
//#define G_FILE_OUTPUT_STREAM_CLASS(k)     (G_TYPE_CHECK_CLASS_CAST((k), G_TYPE_FILE_OUTPUT_STREAM, GFileOutputStreamClass))
//#define G_IS_FILE_OUTPUT_STREAM(o)        (G_TYPE_CHECK_INSTANCE_TYPE ((o), G_TYPE_FILE_OUTPUT_STREAM))
//#define G_IS_FILE_OUTPUT_STREAM_CLASS(k)  (G_TYPE_CHECK_CLASS_TYPE ((k), G_TYPE_FILE_OUTPUT_STREAM))
//#define G_FILE_OUTPUT_STREAM_GET_CLASS(o) (G_TYPE_INSTANCE_GET_CLASS ((o), G_TYPE_FILE_OUTPUT_STREAM, GFileOutputStreamClass))

/**
 * GFileOutputStream:
 *
 * A subclass of GOutputStream for opened files. This adds
 * a few file-specific operations and seeking and truncating.
 *
 * #GFileOutputStream implements GSeekable.
 **/
//struct _GFileOutputStreamClass    GFileOutputStreamClass;
struct _GFileOutputStreamPrivate;
alias _GFileOutputStreamPrivate* GFileOutputStreamPrivate;

struct GFileOutputStream {
  GOutputStream parent_instance;

  /*< private >*/
  GFileOutputStreamPrivate *priv;
};

struct GFileOutputStreamClass {
  GOutputStreamClass parent_class;

  goffset     function(GFileOutputStream    *stream) tell;
  gboolean    function(GFileOutputStream    *stream) can_seek;
  gboolean    function(GFileOutputStream    *stream,
                                     goffset               offset,
                                     GSeekType             type,
                                     GCancellable         *cancellable,
                                     GError              **error) seek;
  gboolean    function(GFileOutputStream    *stream) can_truncate;
  gboolean    function(GFileOutputStream    *stream,
                                     goffset               size,
                                     GCancellable         *cancellable,
                                     GError              **error) truncate_fn;
  GFileInfo * function(GFileOutputStream    *stream,
                                     const(char)*           attributes,
                                     GCancellable         *cancellable,
                                     GError              **error) query_info;
  void        function(GFileOutputStream     *stream,
                                     const(char)*            attributes,
                                     int                   io_priority,
                                     GCancellable         *cancellable,
                                     GAsyncReadyCallback   callback,
                                     gpointer              user_data) query_info_async;
  GFileInfo * function(GFileOutputStream     *stream,
                                     GAsyncResult         *result,
                                     GError              **error) query_info_finish;
  char      * function(GFileOutputStream    *stream) get_etag;

  /* Padding for future expansion */
  void function() _g_reserved1;
  void function() _g_reserved2;
  void function() _g_reserved3;
  void function() _g_reserved4;
  void function() _g_reserved5;
};

GType      g_file_output_stream_get_type          () pure;


GFileInfo *g_file_output_stream_query_info        (GFileOutputStream    *stream,
                                                   const(char)*           attributes,
                                                   GCancellable         *cancellable,
                                                   GError              **error);
void       g_file_output_stream_query_info_async  (GFileOutputStream    *stream,
						   const(char)*           attributes,
						   int                   io_priority,
						   GCancellable         *cancellable,
						   GAsyncReadyCallback   callback,
						   gpointer              user_data);
GFileInfo *g_file_output_stream_query_info_finish (GFileOutputStream    *stream,
						   GAsyncResult         *result,
						   GError              **error);
char *     g_file_output_stream_get_etag          (GFileOutputStream    *stream);



