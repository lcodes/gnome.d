// Generated by gnome-h2d.rb <http://github.com/ddude/gnome.d>.

module gio.localfileenumerator;

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



public import gio.fileenumerator;
public import gio.localfile;

extern(C):

//#define G_TYPE_LOCAL_FILE_ENUMERATOR         (_g_local_file_enumerator_get_type ())
//#define G_LOCAL_FILE_ENUMERATOR(o)           (G_TYPE_CHECK_INSTANCE_CAST ((o), G_TYPE_LOCAL_FILE_ENUMERATOR, GLocalFileEnumerator))
//#define G_LOCAL_FILE_ENUMERATOR_CLASS(k)     (G_TYPE_CHECK_CLASS_CAST((k), G_TYPE_LOCAL_FILE_ENUMERATOR, GLocalFileEnumeratorClass))
//#define G_IS_LOCAL_FILE_ENUMERATOR(o)        (G_TYPE_CHECK_INSTANCE_TYPE ((o), G_TYPE_LOCAL_FILE_ENUMERATOR))
//#define G_IS_LOCAL_FILE_ENUMERATOR_CLASS(k)  (G_TYPE_CHECK_CLASS_TYPE ((k), G_TYPE_LOCAL_FILE_ENUMERATOR))
//#define G_LOCAL_FILE_ENUMERATOR_GET_CLASS(o) (G_TYPE_INSTANCE_GET_CLASS ((o), G_TYPE_LOCAL_FILE_ENUMERATOR, GLocalFileEnumeratorClass))

struct _GLocalFileEnumerator;
alias _GLocalFileEnumerator* GLocalFileEnumerator;
//struct _GLocalFileEnumeratorClass    GLocalFileEnumeratorClass;
struct _GLocalFileEnumeratorPrivate;
alias _GLocalFileEnumeratorPrivate* GLocalFileEnumeratorPrivate;

struct GLocalFileEnumeratorClass {
  GFileEnumeratorClass parent_class;
};

GType             _g_local_file_enumerator_get_type () pure;

GFileEnumerator * _g_local_file_enumerator_new      (GLocalFile           *file,
                                                     const(char)*           attributes,
                                                     GFileQueryInfoFlags   flags,
                                                     GCancellable         *cancellable,
                                                     GError              **error);




