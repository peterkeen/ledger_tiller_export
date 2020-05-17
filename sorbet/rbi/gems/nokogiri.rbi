# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/nokogiri/all/nokogiri.rbi
#
# nokogiri-1.10.9

class Nokogiri::XML::Document < Nokogiri::XML::Node
  def <<(node_or_tags); end
  def add_child(node_or_tags); end
  def canonicalize(*arg0); end
  def clone(*arg0); end
  def collect_namespaces; end
  def create_cdata(string, &block); end
  def create_comment(string, &block); end
  def create_element(name, *args, &block); end
  def create_entity(*arg0); end
  def create_text_node(string, &block); end
  def decorate(node); end
  def decorators(key); end
  def document; end
  def dup(*arg0); end
  def encoding; end
  def encoding=(arg0); end
  def errors; end
  def errors=(arg0); end
  def fragment(tags = nil); end
  def initialize(*args); end
  def inspect_attributes; end
  def name; end
  def namespaces; end
  def remove_namespaces!; end
  def root; end
  def root=(arg0); end
  def self.empty_doc?(string_or_io); end
  def self.new(*arg0); end
  def self.parse(string_or_io, url = nil, encoding = nil, options = nil); end
  def self.read_io(arg0, arg1, arg2, arg3); end
  def self.read_memory(arg0, arg1, arg2, arg3); end
  def self.wrap(document); end
  def slop!; end
  def to_java; end
  def to_xml(*args, &block); end
  def url; end
  def validate; end
  def version; end
end
class Nokogiri::HTML::Document < Nokogiri::XML::Document
  def fragment(tags = nil); end
  def meta_content_type; end
  def meta_encoding; end
  def meta_encoding=(encoding); end
  def self.new(*arg0); end
  def self.parse(string_or_io, url = nil, encoding = nil, options = nil); end
  def self.read_io(arg0, arg1, arg2, arg3); end
  def self.read_memory(arg0, arg1, arg2, arg3); end
  def serialize(options = nil); end
  def set_metadata_element(element); end
  def title; end
  def title=(text); end
  def type; end
end
class Nokogiri::XML::Node
  def <<(node_or_tags); end
  def <=>(other); end
  def ==(other); end
  def >(selector); end
  def [](name); end
  def []=(name, value); end
  def accept(visitor); end
  def add_child(node_or_tags); end
  def add_child_node(arg0); end
  def add_child_node_and_reparent_attrs(node); end
  def add_class(name); end
  def add_namespace(arg0, arg1); end
  def add_namespace_definition(arg0, arg1); end
  def add_next_sibling(node_or_tags); end
  def add_next_sibling_node(arg0); end
  def add_previous_sibling(node_or_tags); end
  def add_previous_sibling_node(arg0); end
  def add_sibling(next_or_previous, node_or_tags); end
  def after(node_or_tags); end
  def ancestors(selector = nil); end
  def append_class(name); end
  def attr(name); end
  def attribute(arg0); end
  def attribute_nodes; end
  def attribute_with_ns(arg0, arg1); end
  def attributes; end
  def before(node_or_tags); end
  def blank?; end
  def canonicalize(mode = nil, inclusive_namespaces = nil, with_comments = nil); end
  def cdata?; end
  def child; end
  def children; end
  def children=(node_or_tags); end
  def classes; end
  def clone(*arg0); end
  def coerce(data); end
  def comment?; end
  def compare(arg0); end
  def content; end
  def content=(string); end
  def create_external_subset(arg0, arg1, arg2); end
  def create_internal_subset(arg0, arg1, arg2); end
  def css_path; end
  def decorate!; end
  def default_namespace=(url); end
  def delete(name); end
  def description; end
  def do_xinclude(options = nil); end
  def document; end
  def document?; end
  def dump_html; end
  def dup(*arg0); end
  def each; end
  def elem?; end
  def element?; end
  def element_children; end
  def elements; end
  def encode_special_chars(arg0); end
  def external_subset; end
  def first_element_child; end
  def fragment(tags); end
  def fragment?; end
  def get(arg0); end
  def get_attribute(name); end
  def has_attribute?(arg0); end
  def html?; end
  def in_context(arg0, arg1); end
  def initialize(name, document); end
  def inner_html(*args); end
  def inner_html=(node_or_tags); end
  def inner_text; end
  def inspect_attributes; end
  def internal_subset; end
  def key?(arg0); end
  def keys; end
  def lang; end
  def lang=(arg0); end
  def last_element_child; end
  def line; end
  def matches?(selector); end
  def name; end
  def name=(arg0); end
  def namespace; end
  def namespace=(ns); end
  def namespace_definitions; end
  def namespace_scopes; end
  def namespaced_key?(arg0, arg1); end
  def namespaces; end
  def native_content=(arg0); end
  def native_write_to(arg0, arg1, arg2, arg3); end
  def next; end
  def next=(node_or_tags); end
  def next_element; end
  def next_sibling; end
  def node_name; end
  def node_name=(arg0); end
  def node_type; end
  def parent; end
  def parent=(parent_node); end
  def parse(string_or_io, options = nil); end
  def path; end
  def pointer_id; end
  def prepend_child(node_or_tags); end
  def previous; end
  def previous=(node_or_tags); end
  def previous_element; end
  def previous_sibling; end
  def process_xincludes(arg0); end
  def processing_instruction?; end
  def read_only?; end
  def remove; end
  def remove_attribute(name); end
  def remove_class(name = nil); end
  def replace(node_or_tags); end
  def replace_node(arg0); end
  def self.new(*arg0); end
  def serialize(*args, &block); end
  def set(arg0, arg1); end
  def set_attribute(name, value); end
  def set_namespace(arg0); end
  def swap(node_or_tags); end
  def text; end
  def text?; end
  def to_format(save_option, options); end
  def to_html(options = nil); end
  def to_s; end
  def to_str; end
  def to_xhtml(options = nil); end
  def to_xml(options = nil); end
  def traverse(&block); end
  def type; end
  def unlink; end
  def values; end
  def wrap(html); end
  def write_format_to(save_option, io, options); end
  def write_html_to(io, options = nil); end
  def write_to(io, *options); end
  def write_xhtml_to(io, options = nil); end
  def write_xml_to(io, options = nil); end
  def xml?; end
  include Enumerable
  include Nokogiri::XML::PP::Node
  include Nokogiri::XML::Searchable
end
class Nokogiri::XML::DocumentFragment < Nokogiri::XML::Node
  def coerce(data); end
  def css(*args); end
  def dup; end
  def errors; end
  def errors=(things); end
  def initialize(document, tags = nil, ctx = nil); end
  def name; end
  def namespace_declarations(ctx); end
  def search(*rules); end
  def self.new(*arg0); end
  def self.parse(tags); end
  def serialize; end
  def to_html(*args); end
  def to_s; end
  def to_xhtml(*args); end
  def to_xml(*args); end
end
class Nokogiri::XML::Text < Nokogiri::XML::CharacterData
  def content=(string); end
  def self.new(*arg0); end
end
class Nokogiri::XML::CDATA < Nokogiri::XML::Text
  def name; end
  def self.new(*arg0); end
end
class Nokogiri::XML::ProcessingInstruction < Nokogiri::XML::Node
  def initialize(document, name, content); end
  def self.new(*arg0); end
end
class Nokogiri::XML::Attr < Nokogiri::XML::Node
  def content=(arg0); end
  def inspect_attributes; end
  def self.new(*arg0); end
  def to_s; end
  def value; end
  def value=(arg0); end
end
class Nokogiri::XML::EntityReference < Nokogiri::XML::Node
  def children; end
  def inspect_attributes; end
  def self.new(*arg0); end
end
class Nokogiri::XML::Comment < Nokogiri::XML::CharacterData
  def self.new(*arg0); end
end
class Nokogiri::XML::NodeSet
  def %(*args); end
  def &(arg0); end
  def +(arg0); end
  def -(arg0); end
  def <<(arg0); end
  def ==(other); end
  def >(selector); end
  def [](*arg0); end
  def add_class(name); end
  def after(datum); end
  def append_class(name); end
  def at(*args); end
  def attr(key, value = nil, &block); end
  def attribute(key, value = nil, &block); end
  def before(datum); end
  def children; end
  def clone; end
  def css(*args); end
  def delete(arg0); end
  def document; end
  def document=(arg0); end
  def dup; end
  def each; end
  def empty?; end
  def filter(expr); end
  def first(n = nil); end
  def include?(arg0); end
  def index(node = nil); end
  def initialize(document, list = nil); end
  def inner_html(*args); end
  def inner_text; end
  def inspect; end
  def last; end
  def length; end
  def pop; end
  def push(arg0); end
  def remove; end
  def remove_attr(name); end
  def remove_attribute(name); end
  def remove_class(name = nil); end
  def reverse; end
  def set(key, value = nil, &block); end
  def shift; end
  def size; end
  def slice(*arg0); end
  def text; end
  def to_a; end
  def to_ary; end
  def to_html(*args); end
  def to_s; end
  def to_xhtml(*args); end
  def to_xml(*args); end
  def unlink; end
  def wrap(html); end
  def xpath(*args); end
  def |(arg0); end
  include Enumerable
  include Nokogiri::XML::Searchable
end
class Nokogiri::XML::XPathContext
  def evaluate(*arg0); end
  def register_namespaces(namespaces); end
  def register_ns(arg0, arg1); end
  def register_variable(arg0, arg1); end
  def self.new(arg0); end
end
class Nokogiri::XML::SAX::ParserContext
  def column; end
  def line; end
  def parse_with(arg0); end
  def recovery; end
  def recovery=(arg0); end
  def replace_entities; end
  def replace_entities=(arg0); end
  def self.file(arg0); end
  def self.io(arg0, arg1); end
  def self.memory(arg0); end
  def self.new(thing, encoding = nil); end
end
class Nokogiri::XML::SAX::PushParser
  def <<(chunk, last_chunk = nil); end
  def document; end
  def document=(arg0); end
  def finish; end
  def initialize(doc = nil, file_name = nil, encoding = nil); end
  def initialize_native(arg0, arg1); end
  def native_write(arg0, arg1); end
  def options; end
  def options=(arg0); end
  def replace_entities; end
  def replace_entities=(arg0); end
  def write(chunk, last_chunk = nil); end
end
class Nokogiri::XML::Reader
  def attr_nodes; end
  def attribute(arg0); end
  def attribute_at(arg0); end
  def attribute_count; end
  def attribute_nodes; end
  def attributes; end
  def attributes?; end
  def base_uri; end
  def default?; end
  def depth; end
  def each; end
  def empty_element?; end
  def encoding; end
  def errors; end
  def errors=(arg0); end
  def initialize(source, url = nil, encoding = nil); end
  def inner_xml; end
  def lang; end
  def local_name; end
  def name; end
  def namespace_uri; end
  def namespaces; end
  def node_type; end
  def outer_xml; end
  def prefix; end
  def read; end
  def self.from_io(*arg0); end
  def self.from_memory(*arg0); end
  def self_closing?; end
  def source; end
  def state; end
  def value; end
  def value?; end
  def xml_version; end
  include Enumerable
end
class Nokogiri::XML::DTD < Nokogiri::XML::Node
  def attributes; end
  def each; end
  def elements; end
  def entities; end
  def external_id; end
  def html5_dtd?; end
  def html_dtd?; end
  def keys; end
  def notations; end
  def system_id; end
  def validate(arg0); end
end
class Nokogiri::XML::ElementContent
  def c1; end
  def c2; end
  def children; end
  def document; end
  def name; end
  def occur; end
  def prefix; end
  def type; end
end
class Nokogiri::XML::AttributeDecl < Nokogiri::XML::Node
  def attribute_type; end
  def default; end
  def enumeration; end
  def inspect; end
end
class Nokogiri::XML::ElementDecl < Nokogiri::XML::Node
  def content; end
  def element_type; end
  def inspect; end
  def prefix; end
end
class Nokogiri::XML::EntityDecl < Nokogiri::XML::Node
  def content; end
  def entity_type; end
  def external_id; end
  def inspect; end
  def original_content; end
  def self.new(name, doc, *args); end
  def system_id; end
end
class Nokogiri::XML::Namespace
  def document; end
  def href; end
  def inspect_attributes; end
  def prefix; end
  include Nokogiri::XML::PP::Node
end
class Nokogiri::HTML::SAX::ParserContext < Nokogiri::XML::SAX::ParserContext
  def parse_with(arg0); end
  def self.file(arg0, arg1); end
  def self.memory(arg0, arg1); end
  def self.new(thing, encoding = nil); end
end
class Nokogiri::HTML::SAX::PushParser < Nokogiri::XML::SAX::PushParser
  def <<(chunk, last_chunk = nil); end
  def document; end
  def document=(arg0); end
  def finish; end
  def initialize(doc = nil, file_name = nil, encoding = nil); end
  def initialize_native(arg0, arg1, arg2); end
  def native_write(arg0, arg1); end
  def write(chunk, last_chunk = nil); end
end
class Nokogiri::XSLT::Stylesheet
  def apply_to(document, params = nil); end
  def self.parse_stylesheet_doc(arg0); end
  def serialize(arg0); end
  def transform(*arg0); end
end
module Nokogiri::XSLT
  def self.parse(string, modules = nil); end
  def self.quote_params(params); end
  def self.register(arg0, arg1); end
end
class Nokogiri::HTML::EntityLookup
  def [](name); end
  def get(arg0); end
end
class Nokogiri::HTML::ElementDescription
  def block?; end
  def default_desc; end
  def default_sub_element; end
  def deprecated?; end
  def deprecated_attributes; end
  def description; end
  def empty?; end
  def implied_end_tag?; end
  def implied_start_tag?; end
  def inline?; end
  def inspect; end
  def name; end
  def optional_attributes; end
  def required_attributes; end
  def save_end_tag?; end
  def self.[](arg0); end
  def sub_elements; end
  def to_s; end
end
class Nokogiri::XML::Schema
  def errors; end
  def errors=(arg0); end
  def self.from_document(arg0); end
  def self.new(string_or_io); end
  def self.read_memory(arg0); end
  def valid?(thing); end
  def validate(thing); end
  def validate_document(arg0); end
  def validate_file(arg0); end
end
class Nokogiri::XML::RelaxNG < Nokogiri::XML::Schema
  def self.from_document(arg0); end
  def self.read_memory(arg0); end
  def validate_document(arg0); end
end
class Nokogiri::EncodingHandler
  def name; end
  def self.[](arg0); end
  def self.alias(arg0, arg1); end
  def self.clear_aliases!; end
  def self.delete(arg0); end
end
module Nokogiri
  def self.HTML(thing, url = nil, encoding = nil, options = nil, &block); end
  def self.Slop(*args, &block); end
  def self.XML(thing, url = nil, encoding = nil, options = nil, &block); end
  def self.XSLT(stylesheet, modules = nil); end
  def self.install_default_aliases; end
  def self.jruby?; end
  def self.make(input = nil, opts = nil, &blk); end
  def self.parse(string, url = nil, encoding = nil, options = nil); end
  def self.uses_libxml?; end
end
class Nokogiri::VersionInfo
  def compiled_parser_version; end
  def engine; end
  def jruby?; end
  def libxml2?; end
  def libxml2_using_packaged?; end
  def libxml2_using_system?; end
  def loaded_parser_version; end
  def self.instance; end
  def to_hash; end
  def to_markdown; end
  def warnings; end
end
class Nokogiri::SyntaxError < StandardError
end
module Nokogiri::XML
  def self.Reader(string_or_io, url = nil, encoding = nil, options = nil); end
  def self.RelaxNG(string_or_io); end
  def self.Schema(string_or_io); end
  def self.fragment(string); end
  def self.parse(thing, url = nil, encoding = nil, options = nil, &block); end
end
module Nokogiri::XML::PP
end
module Nokogiri::XML::PP::Node
  def inspect; end
  def pretty_print(pp); end
end
module Nokogiri::XML::PP::CharacterData
  def inspect; end
  def pretty_print(pp); end
end
class Nokogiri::XML::ParseOptions
  def compact; end
  def compact?; end
  def default_html; end
  def default_html?; end
  def default_xml; end
  def default_xml?; end
  def dtdattr; end
  def dtdattr?; end
  def dtdload; end
  def dtdload?; end
  def dtdvalid; end
  def dtdvalid?; end
  def huge; end
  def huge?; end
  def initialize(options = nil); end
  def inspect; end
  def nobasefix; end
  def nobasefix?; end
  def noblanks; end
  def noblanks?; end
  def nocdata; end
  def nocdata?; end
  def nocompact; end
  def nodefault_html; end
  def nodefault_xml; end
  def nodict; end
  def nodict?; end
  def nodtdattr; end
  def nodtdload; end
  def nodtdvalid; end
  def noent; end
  def noent?; end
  def noerror; end
  def noerror?; end
  def nohuge; end
  def nonet; end
  def nonet?; end
  def nonobasefix; end
  def nonoblanks; end
  def nonocdata; end
  def nonodict; end
  def nonoent; end
  def nonoerror; end
  def nononet; end
  def nonowarning; end
  def nonoxincnode; end
  def nonsclean; end
  def noold10; end
  def nopedantic; end
  def norecover; end
  def nosax1; end
  def nowarning; end
  def nowarning?; end
  def noxinclude; end
  def noxincnode; end
  def noxincnode?; end
  def nsclean; end
  def nsclean?; end
  def old10; end
  def old10?; end
  def options; end
  def options=(arg0); end
  def pedantic; end
  def pedantic?; end
  def recover; end
  def recover?; end
  def sax1; end
  def sax1?; end
  def strict; end
  def strict?; end
  def to_i; end
  def xinclude; end
  def xinclude?; end
end
module Nokogiri::XML::SAX
end
class Nokogiri::XML::SAX::Document
  def cdata_block(string); end
  def characters(string); end
  def comment(string); end
  def end_document; end
  def end_element(name); end
  def end_element_namespace(name, prefix = nil, uri = nil); end
  def error(string); end
  def processing_instruction(name, content); end
  def start_document; end
  def start_element(name, attrs = nil); end
  def start_element_namespace(name, attrs = nil, prefix = nil, uri = nil, ns = nil); end
  def warning(string); end
  def xmldecl(version, encoding, standalone); end
end
class Nokogiri::XML::SAX::Parser
  def check_encoding(encoding); end
  def document; end
  def document=(arg0); end
  def encoding; end
  def encoding=(arg0); end
  def initialize(doc = nil, encoding = nil); end
  def parse(thing, &block); end
  def parse_file(filename); end
  def parse_io(io, encoding = nil); end
  def parse_memory(data); end
end
class Anonymous_Struct_7 < Struct
  def localname; end
  def localname=(_); end
  def prefix; end
  def prefix=(_); end
  def self.[](*arg0); end
  def self.members; end
  def self.new(*arg0); end
  def uri; end
  def uri=(_); end
  def value; end
  def value=(_); end
end
class Nokogiri::XML::SAX::Parser::Attribute < Anonymous_Struct_7
end
module Nokogiri::XML::Searchable
  def %(*args); end
  def /(*args); end
  def at(*args); end
  def at_css(*args); end
  def at_xpath(*args); end
  def css(*args); end
  def css_internal(node, rules, handler, ns); end
  def css_rules_to_xpath(rules, ns); end
  def extract_params(params); end
  def search(*args); end
  def xpath(*args); end
  def xpath_impl(node, path, handler, ns, binds); end
  def xpath_internal(node, paths, handler, ns, binds); end
  def xpath_query_from_css_rule(rule, ns); end
end
class Nokogiri::XML::Node::SaveOptions
  def as_html; end
  def as_html?; end
  def as_xhtml; end
  def as_xhtml?; end
  def as_xml; end
  def as_xml?; end
  def default_html; end
  def default_html?; end
  def default_xhtml; end
  def default_xhtml?; end
  def default_xml; end
  def default_xml?; end
  def format; end
  def format?; end
  def initialize(options = nil); end
  def no_declaration; end
  def no_declaration?; end
  def no_empty_tags; end
  def no_empty_tags?; end
  def no_xhtml; end
  def no_xhtml?; end
  def options; end
  def to_i; end
end
class Nokogiri::XML::CharacterData < Nokogiri::XML::Node
  include Nokogiri::XML::PP::CharacterData
end
class Nokogiri::XML::SyntaxError < Nokogiri::SyntaxError
  def code; end
  def column; end
  def domain; end
  def error?; end
  def fatal?; end
  def file; end
  def int1; end
  def level; end
  def level_to_s; end
  def line; end
  def location_to_s; end
  def nil_or_zero?(attribute); end
  def none?; end
  def str1; end
  def str2; end
  def str3; end
  def to_s; end
  def warning?; end
end
class Nokogiri::XML::XPath
  def document; end
  def document=(arg0); end
end
class Nokogiri::XML::XPath::SyntaxError < Nokogiri::XML::SyntaxError
  def to_s; end
end
class Nokogiri::XML::Builder
  def <<(string); end
  def [](ns); end
  def arity; end
  def arity=(arg0); end
  def cdata(string); end
  def comment(string); end
  def context; end
  def context=(arg0); end
  def doc; end
  def doc=(arg0); end
  def initialize(options = nil, root = nil, &block); end
  def insert(node, &block); end
  def method_missing(method, *args, &block); end
  def parent; end
  def parent=(arg0); end
  def self.with(root, &block); end
  def text(string); end
  def to_xml(*args); end
end
class Nokogiri::XML::Builder::NodeBuilder
  def [](k); end
  def []=(k, v); end
  def initialize(node, doc_builder); end
  def method_missing(method, *args, &block); end
end
class Anonymous_Struct_8 < Struct
  def name; end
  def name=(_); end
  def public_id; end
  def public_id=(_); end
  def self.[](*arg0); end
  def self.members; end
  def self.new(*arg0); end
  def system_id; end
  def system_id=(_); end
end
class Nokogiri::XML::Notation < Anonymous_Struct_8
end
module Nokogiri::HTML
  def self.fragment(string, encoding = nil); end
  def self.parse(thing, url = nil, encoding = nil, options = nil, &block); end
end
class Anonymous_Struct_9 < Struct
  def description; end
  def description=(_); end
  def name; end
  def name=(_); end
  def self.[](*arg0); end
  def self.members; end
  def self.new(*arg0); end
  def value; end
  def value=(_); end
end
class Nokogiri::HTML::EntityDescription < Anonymous_Struct_9
end
class Nokogiri::HTML::Document::EncodingFound < StandardError
  def found_encoding; end
  def initialize(encoding); end
end
class Nokogiri::HTML::Document::EncodingReader
  def encoding_found; end
  def initialize(io); end
  def read(len); end
  def self.detect_encoding(chunk); end
  def self.detect_encoding_for_jruby_without_fix(chunk); end
  def self.is_jruby_without_fix?; end
end
class Nokogiri::HTML::Document::EncodingReader::SAXHandler < Nokogiri::XML::SAX::Document
  def encoding; end
  def initialize; end
  def start_element(name, attrs = nil); end
end
class Nokogiri::HTML::Document::EncodingReader::JumpSAXHandler < Nokogiri::HTML::Document::EncodingReader::SAXHandler
  def initialize(jumptag); end
  def start_element(name, attrs = nil); end
end
class Nokogiri::HTML::DocumentFragment < Nokogiri::XML::DocumentFragment
  def initialize(document, tags = nil, ctx = nil); end
  def self.parse(tags, encoding = nil); end
end
module Nokogiri::HTML::SAX
end
class Nokogiri::HTML::SAX::Parser < Nokogiri::XML::SAX::Parser
  def parse_file(filename, encoding = nil); end
  def parse_io(io, encoding = nil); end
  def parse_memory(data, encoding = nil); end
end
class Struct::HTMLElementDescription < Struct
  def attrs_depr; end
  def attrs_depr=(_); end
  def attrs_opt; end
  def attrs_opt=(_); end
  def attrs_req; end
  def attrs_req=(_); end
  def defaultsubelt; end
  def defaultsubelt=(_); end
  def depr; end
  def depr=(_); end
  def desc; end
  def desc=(_); end
  def dtd; end
  def dtd=(_); end
  def empty; end
  def empty=(_); end
  def endTag; end
  def endTag=(_); end
  def isinline; end
  def isinline=(_); end
  def name; end
  def name=(_); end
  def saveEndTag; end
  def saveEndTag=(_); end
  def self.[](*arg0); end
  def self.members; end
  def self.new(*arg0); end
  def startTag; end
  def startTag=(_); end
  def subelts; end
  def subelts=(_); end
end
module Nokogiri::Decorators
end
module Nokogiri::Decorators::Slop
  def method_missing(name, *args, &block); end
  def respond_to_missing?(name, include_private = nil); end
end
module Nokogiri::CSS
  def self.parse(selector); end
  def self.xpath_for(selector, options = nil); end
end
class Nokogiri::CSS::Node
  def accept(visitor); end
  def find_by_type(types); end
  def initialize(type, value); end
  def to_a; end
  def to_type; end
  def to_xpath(prefix = nil, visitor = nil); end
  def type; end
  def type=(arg0); end
  def value; end
  def value=(arg0); end
end
class Nokogiri::CSS::XPathVisitor
  def accept(node); end
  def is_of_type_pseudo_class?(node); end
  def nth(node, options = nil); end
  def read_a_and_positive_b(values); end
  def visit_attribute_condition(node); end
  def visit_child_selector(node); end
  def visit_class_condition(node); end
  def visit_combinator(node); end
  def visit_conditional_selector(node); end
  def visit_descendant_selector(node); end
  def visit_direct_adjacent_selector(node); end
  def visit_element_name(node); end
  def visit_following_selector(node); end
  def visit_function(node); end
  def visit_id(node); end
  def visit_not(node); end
  def visit_pseudo_class(node); end
end
class Nokogiri::CSS::Parser < Racc::Parser
  def _reduce_1(val, _values, result); end
  def _reduce_11(val, _values, result); end
  def _reduce_12(val, _values, result); end
  def _reduce_13(val, _values, result); end
  def _reduce_14(val, _values, result); end
  def _reduce_15(val, _values, result); end
  def _reduce_16(val, _values, result); end
  def _reduce_18(val, _values, result); end
  def _reduce_2(val, _values, result); end
  def _reduce_20(val, _values, result); end
  def _reduce_21(val, _values, result); end
  def _reduce_22(val, _values, result); end
  def _reduce_23(val, _values, result); end
  def _reduce_25(val, _values, result); end
  def _reduce_26(val, _values, result); end
  def _reduce_27(val, _values, result); end
  def _reduce_28(val, _values, result); end
  def _reduce_29(val, _values, result); end
  def _reduce_3(val, _values, result); end
  def _reduce_30(val, _values, result); end
  def _reduce_31(val, _values, result); end
  def _reduce_32(val, _values, result); end
  def _reduce_33(val, _values, result); end
  def _reduce_34(val, _values, result); end
  def _reduce_35(val, _values, result); end
  def _reduce_36(val, _values, result); end
  def _reduce_37(val, _values, result); end
  def _reduce_4(val, _values, result); end
  def _reduce_40(val, _values, result); end
  def _reduce_41(val, _values, result); end
  def _reduce_42(val, _values, result); end
  def _reduce_43(val, _values, result); end
  def _reduce_44(val, _values, result); end
  def _reduce_45(val, _values, result); end
  def _reduce_48(val, _values, result); end
  def _reduce_49(val, _values, result); end
  def _reduce_5(val, _values, result); end
  def _reduce_50(val, _values, result); end
  def _reduce_51(val, _values, result); end
  def _reduce_52(val, _values, result); end
  def _reduce_58(val, _values, result); end
  def _reduce_59(val, _values, result); end
  def _reduce_6(val, _values, result); end
  def _reduce_60(val, _values, result); end
  def _reduce_61(val, _values, result); end
  def _reduce_63(val, _values, result); end
  def _reduce_64(val, _values, result); end
  def _reduce_65(val, _values, result); end
  def _reduce_66(val, _values, result); end
  def _reduce_67(val, _values, result); end
  def _reduce_68(val, _values, result); end
  def _reduce_69(val, _values, result); end
  def _reduce_7(val, _values, result); end
  def _reduce_70(val, _values, result); end
  def _reduce_8(val, _values, result); end
  def _reduce_9(val, _values, result); end
  def _reduce_none(val, _values, result); end
  def initialize(namespaces = nil); end
  def next_token; end
  def on_error(error_token_id, error_value, value_stack); end
  def parse(string); end
  def self.[](string); end
  def self.[]=(string, value); end
  def self.cache_on; end
  def self.cache_on=(arg0); end
  def self.cache_on?; end
  def self.clear_cache; end
  def self.parse(selector); end
  def self.set_cache(arg0); end
  def self.without_cache(&block); end
  def unescape_css_identifier(identifier); end
  def unescape_css_string(str); end
  def xpath_for(string, options = nil); end
end
class Nokogiri::CSS::Tokenizer
  def _next_token; end
  def action; end
  def filename; end
  def lineno; end
  def load_file(filename); end
  def next_token; end
  def scan(str); end
  def scan_file(filename); end
  def scan_setup(str); end
  def scan_str(str); end
  def state; end
  def state=(arg0); end
end
class Nokogiri::CSS::Tokenizer::ScanError < StandardError
end
class Nokogiri::CSS::SyntaxError < Nokogiri::SyntaxError
end
class Nokogiri::HTML::Builder < Nokogiri::XML::Builder
  def to_html; end
end
class Object < BasicObject
  def Nokogiri(*args, &block); end
end
