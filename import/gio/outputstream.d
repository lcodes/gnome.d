// Generated by gnome-h2d.rb <http://github.com/ddude/gnome.d>.

module gio.outputstream;

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

//#define G_TYPE_OUTPUT_STREAM         (g_output_stream_get_type ())
//#define G_OUTPUT_STREAM(o)           (G_TYPE_CHECK_INSTANCE_CAST ((o), G_TYPE_OUTPUT_STREAM, GOutputStream))
//#define G_OUTPUT_STREAM_CLASS(k)     (G_TYPE_CHECK_CLASS_CAST((k), G_TYPE_OUTPUT_STREAM, GOutputStreamClass))
//#define G_IS_OUTPUT_STREAM(o)        (G_TYPE_CHECK_INSTANCE_TYPE ((o), G_TYPE_OUTPUT_STREAM))
//#define G_IS_OUTPUT_STREAM_CLASS(k)  (G_TYPE_CHECK_CLASS_TYPE ((k), G_TYPE_OUTPUT_STREAM))
//#define G_OUTPUT_STREAM_GET_CLASS(o) (G_TYPE_INSTANCE_GET_CLASS ((o), G_TYPE_OUTPUT_STREAM, GOutputStreamClass))

/**
 * GOutputStream:
 *
 * Base class for writing output.
 *
 * All classes derived from GOutputStream should implement synchronous
 * writing, splicing, flushing and closing streams, but may implement
 * asynchronous versions.
 **/
//struct _GOutputStreamClass    GOutputStreamClass;
struct _GOutputStreamPrivate;
alias _GOutputStreamPrivate* GOutputStreamPrivate;

struct GOutputStream {
  GObject parent_instance;

  /*< private >*/
  GOutputStreamPrivate *priv;
};


struct GOutputStreamClass {
  GObjectClass parent_class;

  /* Sync ops: */

  gssize      function(GOutputStream            *stream,
                                 const(void)*               buffer,
                                 gsize                     count,
                                 GCancellable             *cancellable,
                                 GError                  **error) write_fn;
  gssize      function(GOutputStream            *stream,
                                 GInputStream             *source,
                                 GOutputStreamSpliceFlags  flags,
                                 GCancellable             *cancellable,
                                 GError                  **error) splice;
  gboolean    function(GOutputStream            *stream,
                                 GCancellable             *cancellable,
                                 GError                  **error) flush;
  gboolean    function(GOutputStream            *stream,
                                 GCancellable             *cancellable,
                                 GError                  **error) close_fn;

  /* Async ops: (optional in derived classes) */

  void        function(GOutputStream            *stream,
                                 const(void)*               buffer,
                                 gsize                     count,
                                 int                       io_priority,
                                 GCancellable             *cancellable,
                                 GAsyncReadyCallback       callback,
                                 gpointer                  user_data) write_async;
  gssize      function(GOutputStream            *stream,
                                 GAsyncResult             *result,
                                 GError                  **error) write_finish;
  void        function(GOutputStream            *stream,
                                 GInputStream             *source,
                                 GOutputStreamSpliceFlags  flags,
                                 int                       io_priority,
                                 GCancellable             *cancellable,
                                 GAsyncReadyCallback       callback,
                                 gpointer                  user_data) splice_async;
  gssize      function(GOutputStream            *stream,
                                 GAsyncResult             *result,
                                 GError                  **error) splice_finish;
  void        function(GOutputStream            *stream,
                                 int                       io_priority,
                                 GCancellable             *cancellable,
                                 GAsyncReadyCallback       callback,
                                 gpointer                  user_data) flush_async;
  gboolean    function(GOutputStream            *stream,
                                 GAsyncResult             *result,
                                 GError                  **error) flush_finish;
  void        function(GOutputStream            *stream,
                                 int                       io_priority,
                                 GCancellable             *cancellable,
                                 GAsyncReadyCallback       callback,
                                 gpointer                  user_data) close_async;
  gboolean    function(GOutputStream            *stream,
                                 GAsyncResult             *result,
                                 GError                  **error) close_finish;

  /*< private >*/
  /* Padding for future expansion */
  void function() _g_reserved1;
  void function() _g_reserved2;
  void function() _g_reserved3;
  void function() _g_reserved4;
  void function() _g_reserved5;
  void function() _g_reserved6;
  void function() _g_reserved7;
  void function() _g_reserved8;
};

GType    g_output_stream_get_type      () pure;

gssize   g_output_stream_write         (GOutputStream             *stream,
					const(void)*                buffer,
					gsize                      count,
					GCancellable              *cancellable,
					GError                   **error);
gboolean g_output_stream_write_all     (GOutputStream             *stream,
					const(void)*                buffer,
					gsize                      count,
					gsize                     *bytes_written,
					GCancellable              *cancellable,
					GError                   **error);
/+ GLIB_AVAILABLE_IN_2_34 +/
gssize   g_output_stream_write_bytes   (GOutputStream             *stream,
					GBytes                    *bytes,
					GCancellable              *cancellable,
					GError                   **error);
gssize   g_output_stream_splice        (GOutputStream             *stream,
					GInputStream              *source,
					GOutputStreamSpliceFlags   flags,
					GCancellable              *cancellable,
					GError                   **error);
gboolean g_output_stream_flush         (GOutputStream             *stream,
					GCancellable              *cancellable,
					GError                   **error);
gboolean g_output_stream_close         (GOutputStream             *stream,
					GCancellable              *cancellable,
					GError                   **error);
void     g_output_stream_write_async   (GOutputStream             *stream,
					const(void)*                buffer,
					gsize                      count,
					int                        io_priority,
					GCancellable              *cancellable,
					GAsyncReadyCallback        callback,
					gpointer                   user_data);
gssize   g_output_stream_write_finish  (GOutputStream             *stream,
					GAsyncResult              *result,
					GError                   **error);
/+ GLIB_AVAILABLE_IN_2_34 +/
void     g_output_stream_write_bytes_async  (GOutputStream             *stream,
					     GBytes                    *bytes,
					     int                        io_priority,
					     GCancellable              *cancellable,
					     GAsyncReadyCallback        callback,
					     gpointer                   user_data);
/+ GLIB_AVAILABLE_IN_2_34 +/
gssize   g_output_stream_write_bytes_finish (GOutputStream             *stream,
					     GAsyncResult              *result,
					     GError                   **error);
void     g_output_stream_splice_async  (GOutputStream             *stream,
					GInputStream              *source,
					GOutputStreamSpliceFlags   flags,
					int                        io_priority,
					GCancellable              *cancellable,
					GAsyncReadyCallback        callback,
					gpointer                   user_data);
gssize   g_output_stream_splice_finish (GOutputStream             *stream,
					GAsyncResult              *result,
					GError                   **error);
void     g_output_stream_flush_async   (GOutputStream             *stream,
					int                        io_priority,
					GCancellable              *cancellable,
					GAsyncReadyCallback        callback,
					gpointer                   user_data);
gboolean g_output_stream_flush_finish  (GOutputStream             *stream,
					GAsyncResult              *result,
					GError                   **error);
void     g_output_stream_close_async   (GOutputStream             *stream,
					int                        io_priority,
					GCancellable              *cancellable,
					GAsyncReadyCallback        callback,
					gpointer                   user_data);
gboolean g_output_stream_close_finish  (GOutputStream             *stream,
					GAsyncResult              *result,
					GError                   **error);

gboolean g_output_stream_is_closed     (GOutputStream             *stream);
gboolean g_output_stream_is_closing    (GOutputStream             *stream);
gboolean g_output_stream_has_pending   (GOutputStream             *stream);
gboolean g_output_stream_set_pending   (GOutputStream             *stream,
					GError                   **error);
void     g_output_stream_clear_pending (GOutputStream             *stream);




