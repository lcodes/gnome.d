// Generated by gnome-h2d.rb <http://github.com/ddude/gnome.d>.

module gio.converteroutputstream;

/* GIO - GLib Input, Output and Streaming Library
 *
 * Copyright (C) 2009 Red Hat, Inc.
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



public import gio.filteroutputstream;
public import gio.converter;

extern(C):

//#define G_TYPE_CONVERTER_OUTPUT_STREAM         (g_converter_output_stream_get_type ())
//#define G_CONVERTER_OUTPUT_STREAM(o)           (G_TYPE_CHECK_INSTANCE_CAST ((o), G_TYPE_CONVERTER_OUTPUT_STREAM, GConverterOutputStream))
//#define G_CONVERTER_OUTPUT_STREAM_CLASS(k)     (G_TYPE_CHECK_CLASS_CAST((k), G_TYPE_CONVERTER_OUTPUT_STREAM, GConverterOutputStreamClass))
//#define G_IS_CONVERTER_OUTPUT_STREAM(o)        (G_TYPE_CHECK_INSTANCE_TYPE ((o), G_TYPE_CONVERTER_OUTPUT_STREAM))
//#define G_IS_CONVERTER_OUTPUT_STREAM_CLASS(k)  (G_TYPE_CHECK_CLASS_TYPE ((k), G_TYPE_CONVERTER_OUTPUT_STREAM))
//#define G_CONVERTER_OUTPUT_STREAM_GET_CLASS(o) (G_TYPE_INSTANCE_GET_CLASS ((o), G_TYPE_CONVERTER_OUTPUT_STREAM, GConverterOutputStreamClass))

/**
 * GConverterOutputStream:
 *
 * An implementation of #GFilterOutputStream that allows data
 * conversion.
 **/
//struct _GConverterOutputStreamClass    GConverterOutputStreamClass;
struct _GConverterOutputStreamPrivate;
alias _GConverterOutputStreamPrivate* GConverterOutputStreamPrivate;

struct GConverterOutputStream {
  GFilterOutputStream parent_instance;

  /*< private >*/
  GConverterOutputStreamPrivate *priv;
};

struct GConverterOutputStreamClass {
  GFilterOutputStreamClass parent_class;

  /*< private >*/
  /* Padding for future expansion */
  void function() _g_reserved1;
  void function() _g_reserved2;
  void function() _g_reserved3;
  void function() _g_reserved4;
  void function() _g_reserved5;
};

GType                   g_converter_output_stream_get_type      () pure;
GOutputStream          *g_converter_output_stream_new           (GOutputStream         *base_stream,
                                                                 GConverter            *converter);
GConverter             *g_converter_output_stream_get_converter (GConverterOutputStream *converter_stream);




