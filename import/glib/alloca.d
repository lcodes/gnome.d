// Generated by gnome-h2d.rb <http://github.com/ddude/gnome.d>.

module glib.alloca;

/* GLIB - Library of useful routines for C programming
 * Copyright (C) 1995-1997  Peter Mattis, Spencer Kimball and Josh MacDonald
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

/*
 * Modified by the GLib Team and others 1997-2000.  See the AUTHORS
 * file for a list of people on the GLib Team.  See the ChangeLog
 * files for a list of changes.  These files are distributed with
 * GLib at ftp://ftp.gtk.org/pub/gtk/.
 */

/+
#if !defined (__GLIB_H_INSIDE__) && !defined (GLIB_COMPILATION)
#error "Only <glib.h> can be included directly."
//#endif
+/



public import glib.types;

/+
#ifdef  __GNUC__
/* GCC does the right thing */
# undef alloca
# define alloca(size)   __builtin_alloca (size)
#elif defined (GLIB_HAVE_ALLOCA_H)
/* a native and working alloca.h is there */ 
# include <alloca.h>
//#else /* !__GNUC__ && !GLIB_HAVE_ALLOCA_H */
# if defined(_MSC_VER) || defined(__DMC__)
#  include <malloc.h>
#  define alloca _alloca
# else /* !_MSC_VER && !__DMC__ */
#  ifdef _AIX
#   pragma alloca
#  else /* !_AIX */
#   ifndef alloca /* predefined by HP cc +Olibcalls */
extern(C):
char *alloca ();

#   endif /* !alloca */
#  endif /* !_AIX */
# endif /* !_MSC_VER && !__DMC__ */
//#endif
+/ /* !__GNUC__ && !GLIB_HAVE_ALLOCA_H */

/**
 * g_alloca:
 * @size: number of bytes to allocate.
 * 
 * Allocates @size bytes on the stack; these bytes will be freed when the current
 * stack frame is cleaned up. This macro essentially just wraps the alloca()
 * function present on most UNIX variants.
 * Thus it provides the same advantages and pitfalls as alloca():
 * <variablelist>
 *   <varlistentry><term></term><listitem><para>
 *     + alloca() is very fast, as on most systems it's implemented by just adjusting
 *     the stack pointer register.
 *   </para></listitem></varlistentry>
 *   <varlistentry><term></term><listitem><para>
 *     + It doesn't cause any memory fragmentation, within its scope, separate alloca()
 *     blocks just build up and are released together at function end.
 *   </para></listitem></varlistentry>
 *   <varlistentry><term></term><listitem><para>
 *     - Allocation sizes have to fit into the current stack frame. For instance in a
 *       threaded environment on Linux, the per-thread stack size is limited to 2 Megabytes,
 *       so be sparse with alloca() uses.
 *   </para></listitem></varlistentry>
 *   <varlistentry><term></term><listitem><para>
 *     - Allocation failure due to insufficient stack space is not indicated with a %NULL
 *       return like e.g. with malloc(). Instead, most systems probably handle it the same
 *       way as out of stack space situations from infinite function recursion, i.e.
 *       with a segmentation fault.
 *   </para></listitem></varlistentry>
 *   <varlistentry><term></term><listitem><para>
 *     - Special care has to be taken when mixing alloca() with GNU C variable sized arrays.
 *       Stack space allocated with alloca() in the same scope as a variable sized array
 *       will be freed together with the variable sized array upon exit of that scope, and
 *       not upon exit of the enclosing function scope.
 *   </para></listitem></varlistentry>
 * </variablelist>
 * 
 * Returns: space for @size bytes, allocated on the stack
 */
//#define g_alloca(size)		 alloca (size)
/**
 * g_newa:
 * @struct_type: Type of memory chunks to be allocated
 * @n_structs: Number of chunks to be allocated
 * 
 * Wraps g_alloca() in a more typesafe manner.
 * 
 * Returns: Pointer to stack space for @n_structs chunks of type @struct_type
 */
//#define g_newa(struct_type, n_structs)	((struct_type*) g_alloca (sizeof (struct_type) * (gsize) (n_structs)))


