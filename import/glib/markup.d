// Generated by gnome-h2d.rb <http://github.com/ddude/gnome.d>.

module glib.markup;

/* gmarkup.h - Simple XML-like string parser/writer
 *
 *  Copyright 2000 Red Hat, Inc.
 *
 * GLib is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as
 * published by the Free Software Foundation; either version 2 of the
 * License, or (at your option) any later version.
 *
 * GLib is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with GLib; see the file COPYING.LIB.  If not,
 * write to the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 *   Boston, MA 02111-1307, USA.
 */

/+
#if !defined (__GLIB_H_INSIDE__) && !defined (GLIB_COMPILATION)
#error "Only <glib.h> can be included directly."
//#endif
+/



import core.stdc.stdarg;

public import glib.error;
public import glib.slist;

extern(C):

/**
 * GMarkupError:
 * @G_MARKUP_ERROR_BAD_UTF8: text being parsed was not valid UTF-8
 * @G_MARKUP_ERROR_EMPTY: document contained nothing, or only whitespace
 * @G_MARKUP_ERROR_PARSE: document was ill-formed
 * @G_MARKUP_ERROR_UNKNOWN_ELEMENT: error should be set by #GMarkupParser
 *     functions; element wasn't known
 * @G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE: error should be set by #GMarkupParser
 *     functions; attribute wasn't known
 * @G_MARKUP_ERROR_INVALID_CONTENT: error should be set by #GMarkupParser
 *     functions; content was invalid
 * @G_MARKUP_ERROR_MISSING_ATTRIBUTE: error should be set by #GMarkupParser
 *     functions; a required attribute was missing
 *
 * Error codes returned by markup parsing.
 */
enum GMarkupError {
  G_MARKUP_ERROR_BAD_UTF8,
  G_MARKUP_ERROR_EMPTY,
  G_MARKUP_ERROR_PARSE,
  /* The following are primarily intended for specific GMarkupParser
   * implementations to set.
   */
  G_MARKUP_ERROR_UNKNOWN_ELEMENT,
  G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE,
  G_MARKUP_ERROR_INVALID_CONTENT,
  G_MARKUP_ERROR_MISSING_ATTRIBUTE
}

/**
 * G_MARKUP_ERROR:
 *
 * Error domain for markup parsing.
 * Errors in this domain will be from the #GMarkupError enumeration.
 * See #GError for information on error domains.
 */
//#define G_MARKUP_ERROR g_markup_error_quark ()

GQuark g_markup_error_quark ();

/**
 * GMarkupParseFlags:
 * @G_MARKUP_DO_NOT_USE_THIS_UNSUPPORTED_FLAG: flag you should not use
 * @G_MARKUP_TREAT_CDATA_AS_TEXT: When this flag is set, CDATA marked
 *     sections are not passed literally to the @passthrough function of
 *     the parser. Instead, the content of the section (without the
 *     <literal>&lt;![CDATA[</literal> and <literal>]]&gt;</literal>) is
 *     passed to the @text function. This flag was added in GLib 2.12
 * @G_MARKUP_PREFIX_ERROR_POSITION: Normally errors caught by GMarkup
 *     itself have line/column information prefixed to them to let the
 *     caller know the location of the error. When this flag is set the
 *     location information is also prefixed to errors generated by the
 *     #GMarkupParser implementation functions
 *
 * Flags that affect the behaviour of the parser.
 */
enum GMarkupParseFlags {
  G_MARKUP_DO_NOT_USE_THIS_UNSUPPORTED_FLAG = 1 << 0,
  G_MARKUP_TREAT_CDATA_AS_TEXT              = 1 << 1,
  G_MARKUP_PREFIX_ERROR_POSITION            = 1 << 2
}

/**
 * GMarkupParseContext:
 *
 * A parse context is used to parse a stream of bytes that
 * you expect to contain marked-up text.
 *
 * See g_markup_parse_context_new(), #GMarkupParser, and so
 * on for more details.
 */
struct _GMarkupParseContext;
alias _GMarkupParseContext* GMarkupParseContext;
//struct _GMarkupParser GMarkupParser;

/**
 * GMarkupParser:
 * @start_element: Callback to invoke when the opening tag of an element
 *     is seen.
 * @end_element: Callback to invoke when the closing tag of an element
 *     is seen. Note that this is also called for empty tags like
 *     <literal>&lt;empty/&gt;</literal>.
 * @text: Callback to invoke when some text is seen (text is always
 *     inside an element). Note that the text of an element may be spread
 *     over multiple calls of this function. If the
 *     %G_MARKUP_TREAT_CDATA_AS_TEXT flag is set, this function is also
 *     called for the content of CDATA marked sections.
 * @passthrough: Callback to invoke for comments, processing instructions
 *     and doctype declarations; if you're re-writing the parsed document,
 *     write the passthrough text back out in the same position. If the
 *     %G_MARKUP_TREAT_CDATA_AS_TEXT flag is not set, this function is also
 *     called for CDATA marked sections.
 * @error: Callback to invoke when an error occurs.
 *
 * Any of the fields in #GMarkupParser can be %NULL, in which case they
 * will be ignored. Except for the @error function, any of these callbacks
 * can set an error; in particular the %G_MARKUP_ERROR_UNKNOWN_ELEMENT,
 * %G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE, and %G_MARKUP_ERROR_INVALID_CONTENT
 * errors are intended to be set from these callbacks. If you set an error
 * from a callback, g_markup_parse_context_parse() will report that error
 * back to its caller.
 */
struct GMarkupParser {
  /* Called for open tags <foo bar="baz"> */
  void function(GMarkupParseContext *context,
                          const(gchar)*         element_name,
                          const(gchar)*        *attribute_names,
                          const(gchar)*        *attribute_values,
                          gpointer             user_data,
                          GError             **error) start_element;

  /* Called for close tags </foo> */
  void function(GMarkupParseContext *context,
                          const(gchar)*         element_name,
                          gpointer             user_data,
                          GError             **error) end_element;

  /* Called for character data */
  /* text is not nul-terminated */
  void function(GMarkupParseContext *context,
                          const(gchar)*         text,
                          gsize                text_len,
                          gpointer             user_data,
                          GError             **error) text;

  /* Called for strings that should be re-saved verbatim in this same
   * position, but are not otherwise interpretable.  At the moment
   * this includes comments and processing instructions.
   */
  /* text is not nul-terminated. */
  void function(GMarkupParseContext *context,
                          const(gchar)*         passthrough_text,
                          gsize                text_len,
                          gpointer             user_data,
                          GError             **error) passthrough;

  /* Called on error, including one set by other
   * methods in the vtable. The GError should not be freed.
   */
  void function(GMarkupParseContext *context,
                          GError              *error,
                          gpointer             user_data) error;
};

GMarkupParseContext *g_markup_parse_context_new   (const(GMarkupParser)* parser,
                                                   GMarkupParseFlags    flags,
                                                   gpointer             user_data,
                                                   GDestroyNotify       user_data_dnotify);
void                 g_markup_parse_context_free  (GMarkupParseContext *context);
gboolean             g_markup_parse_context_parse (GMarkupParseContext *context,
                                                   const(gchar)*         text,
                                                   gssize               text_len,
                                                   GError             **error);
void                 g_markup_parse_context_push  (GMarkupParseContext *context,
                                                   const(GMarkupParser)* parser,
                                                   gpointer             user_data);
gpointer             g_markup_parse_context_pop   (GMarkupParseContext *context);

gboolean             g_markup_parse_context_end_parse (GMarkupParseContext *context,
                                                       GError             **error);
const(gchar)*         g_markup_parse_context_get_element (GMarkupParseContext *context);
const(GSList)*        g_markup_parse_context_get_element_stack (GMarkupParseContext *context);

/* For user-constructed error messages, has no precise semantics */
void                 g_markup_parse_context_get_position (GMarkupParseContext *context,
                                                          gint                *line_number,
                                                          gint                *char_number);
gpointer             g_markup_parse_context_get_user_data (GMarkupParseContext *context);

/* useful when saving */
gchar* g_markup_escape_text (const(gchar)* text,
                             gssize       length);

gchar *g_markup_printf_escaped (const(char)* format,
				...) /+ G_GNUC_PRINTF (1, 2) +/;
gchar *g_markup_vprintf_escaped (const(char)* format,
				 va_list     args);

enum GMarkupCollectType {
  G_MARKUP_COLLECT_INVALID,
  G_MARKUP_COLLECT_STRING,
  G_MARKUP_COLLECT_STRDUP,
  G_MARKUP_COLLECT_BOOLEAN,
  G_MARKUP_COLLECT_TRISTATE,

  G_MARKUP_COLLECT_OPTIONAL = (1 << 16)
}


/* useful from start_element */
gboolean   g_markup_collect_attributes (const(gchar)*         element_name,
                                        const(gchar)*        *attribute_names,
                                        const(gchar)*        *attribute_values,
                                        GError             **error,
                                        GMarkupCollectType   first_type,
                                        const(gchar)*         first_attr,
                                        ...);




