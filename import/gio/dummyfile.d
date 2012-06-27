// Generated by gnome-h2d.rb <http://github.com/ddude/gnome.d>.

module gio.dummyfile;

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



public import gio.gio;

extern(C):

//#define G_TYPE_DUMMY_FILE         (_g_dummy_file_get_type ())
//#define G_DUMMY_FILE(o)           (G_TYPE_CHECK_INSTANCE_CAST ((o), G_TYPE_DUMMY_FILE, GDummyFile))
//#define G_DUMMY_FILE_CLASS(k)     (G_TYPE_CHECK_CLASS_CAST((k), G_TYPE_DUMMY_FILE, GDummyFileClass))
//#define G_IS_DUMMY_FILE(o)        (G_TYPE_CHECK_INSTANCE_TYPE ((o), G_TYPE_DUMMY_FILE))
//#define G_IS_DUMMY_FILE_CLASS(k)  (G_TYPE_CHECK_CLASS_TYPE ((k), G_TYPE_DUMMY_FILE))
//#define G_DUMMY_FILE_GET_CLASS(o) (G_TYPE_INSTANCE_GET_CLASS ((o), G_TYPE_DUMMY_FILE, GDummyFileClass))

struct _GDummyFile;
alias _GDummyFile* GDummyFile;
//struct _GDummyFileClass   GDummyFileClass;

struct GDummyFileClass {
  GObjectClass parent_class;
};

GType   _g_dummy_file_get_type () pure;

GFile * _g_dummy_file_new      (const(char)* uri);




