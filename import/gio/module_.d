// Generated by gnome-h2d.rb <http://github.com/ddude/gnome.d>.

module gio.module_;

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
public import gmodule.gmodule;

extern(C):

struct _GIOModuleScope;
alias _GIOModuleScope* GIOModuleScope;

GIOModuleScope *   g_io_module_scope_new     (GIOModuleScopeFlags  flags);
void               g_io_module_scope_free    (GIOModuleScope      *scope_);
void               g_io_module_scope_block   (GIOModuleScope      *scope_,
                                              const(gchar)*         basename);

//#define G_IO_TYPE_MODULE         (g_io_module_get_type ())
//#define G_IO_MODULE(o)           (G_TYPE_CHECK_INSTANCE_CAST ((o), G_IO_TYPE_MODULE, GIOModule))
//#define G_IO_MODULE_CLASS(k)     (G_TYPE_CHECK_CLASS_CAST((k), G_IO_TYPE_MODULE, GIOModuleClass))
//#define G_IO_IS_MODULE(o)        (G_TYPE_CHECK_INSTANCE_TYPE ((o), G_IO_TYPE_MODULE))
//#define G_IO_IS_MODULE_CLASS(k)  (G_TYPE_CHECK_CLASS_TYPE ((k), G_IO_TYPE_MODULE))
//#define G_IO_MODULE_GET_CLASS(o) (G_TYPE_INSTANCE_GET_CLASS ((o), G_IO_TYPE_MODULE, GIOModuleClass))

/**
 * GIOModule:
 *
 * Opaque module base class for extending GIO.
 **/
//struct _GIOModuleClass GIOModuleClass;

GType              g_io_module_get_type                       () pure;
GIOModule         *g_io_module_new                            (const(gchar)*       filename);

void               g_io_modules_scan_all_in_directory         (const(char)*        dirname);
GList             *g_io_modules_load_all_in_directory         (const(gchar)*       dirname);

void               g_io_modules_scan_all_in_directory_with_scope   (const(gchar)*       dirname,
                                                                    GIOModuleScope    *scope_);
GList             *g_io_modules_load_all_in_directory_with_scope   (const(gchar)*       dirname,
                                                                    GIOModuleScope    *scope_);

GIOExtensionPoint *g_io_extension_point_register              (const(char)*        name);
GIOExtensionPoint *g_io_extension_point_lookup                (const(char)*        name);
void               g_io_extension_point_set_required_type     (GIOExtensionPoint *extension_point,
							       GType              type);
GType              g_io_extension_point_get_required_type     (GIOExtensionPoint *extension_point);
GList             *g_io_extension_point_get_extensions        (GIOExtensionPoint *extension_point);
GIOExtension *     g_io_extension_point_get_extension_by_name (GIOExtensionPoint *extension_point,
							       const(char)*        name);
GIOExtension *     g_io_extension_point_implement             (const(char)*        extension_point_name,
							       GType              type,
							       const(char)*        extension_name,
							       gint               priority);

GType              g_io_extension_get_type                    (GIOExtension      *extension);
const(char)*        g_io_extension_get_name                    (GIOExtension      *extension);
gint               g_io_extension_get_priority                (GIOExtension      *extension);
GTypeClass*        g_io_extension_ref_class                   (GIOExtension      *extension);


/* API for the modules to implement */

/**
 * g_io_module_load:
 * @module: a #GIOModule.
 *
 * Required API for GIO modules to implement.
 * This function is ran after the module has been loaded into GIO,
 * to initialize the module.
 **/
void   g_io_module_load   (GIOModule *module_);

/**
 * g_io_module_unload:
 * @module: a #GIOModule.
 *
 * Required API for GIO modules to implement.
 * This function is ran when the module is being unloaded from GIO,
 * to finalize the module.
 **/
void   g_io_module_unload (GIOModule *module_);

/**
 * g_io_module_query:
 *
 * Optional API for GIO modules to implement.
 *
 * Should return a list of all the extension points that may be
 * implemented in this module.
 *
 * This method will not be called in normal use, however it may be
 * called when probing existing modules and recording which extension
 * points that this model is used for. This means we won't have to
 * load and initialze this module unless its needed.
 *
 * If this function is not implemented by the module the module will
 * always be loaded, initialized and then unloaded on application startup
 * so that it can register its extension points during init.
 *
 * Note that a module need not actually implement all the extension points
 * that g_io_module_query returns, since the exact list of extension may
 * depend on runtime issues. However all extension points actually implemented
 * must be returned by g_io_module_query() (if defined).
 *
 * When installing a module that implements g_io_module_query you must
 * run gio-querymodules in order to build the cache files required for
 * lazy loading.
 *
 * Returns: (transfer full): A %NULL-terminated array of strings, listing the supported
 *     extension points of the module. The array must be suitable for
 *     freeing with g_strfreev().
 *
 * Since: 2.24
 **/
char **g_io_module_query ();




