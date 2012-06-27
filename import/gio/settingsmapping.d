// Generated by gnome-h2d.rb <http://github.com/ddude/gnome.d>.

module gio.settingsmapping;

public import gio.types;
/*
 * Copyright © 2010 Novell, Inc.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the licence, or (at your option) any later version.
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
 *
 * Author: Vincent Untz <vuntz@gnome.org>
 */



//

/+ G_GNUC_INTERNAL +/
GVariant *              g_settings_set_mapping                          (const(GValue)*       value,
                                                                         const(GVariantType)* expected_type,
                                                                         gpointer            user_data);
/+ G_GNUC_INTERNAL +/
gboolean                g_settings_get_mapping                          (GValue             *value,
                                                                         GVariant           *variant,
                                                                         gpointer            user_data);
/+ G_GNUC_INTERNAL +/
gboolean                g_settings_mapping_is_compatible                (GType               gvalue_type,
                                                                         const(GVariantType)* variant_type);


