// Generated by gnome-h2d.rb <http://github.com/ddude/gnome.d>.

module glib.printf;

/* GLIB - Library of useful routines for C programming
 * Copyright (C) 1995-1997, 2002  Peter Mattis, Red Hat, Inc.
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
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */



public import glib.glib;
import core.stdc.stdio;
import core.stdc.stdarg;

extern(C):

gint                  g_printf    (const(gchar)*format,
                                   ...) /+ G_GNUC_PRINTF (1, 2) +/;
gint                  g_fprintf   (FILE        *file,
				   const(gchar)*format,
				   ...) /+ G_GNUC_PRINTF (2, 3) +/;
gint                  g_sprintf   (gchar       *string,
				   const(gchar)*format,
				   ...) /+ G_GNUC_PRINTF (2, 3) +/;

gint                  g_vprintf   (const(gchar)*format,
                                   va_list      args);
gint                  g_vfprintf  (FILE        *file,
				   const(gchar)*format,
				   va_list      args);
gint                  g_vsprintf  (gchar       *string,
				   const(gchar)*format,
				   va_list      args);
gint                  g_vasprintf (gchar      **string,
				   const(gchar)*format,
				   va_list      args);




