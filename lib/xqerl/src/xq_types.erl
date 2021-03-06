%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017-2019 Zachary N. Dean  All Rights Reserved.
%%
%% This file is provided to you under the Apache License,
%% Version 2.0 (the "License"); you may not use this file
%% except in compliance with the License.  You may obtain
%% a copy of the License at
%%
%%   http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing,
%% software distributed under the License is distributed on an
%% "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
%% KIND, either express or implied.  See the License for the
%% specific language governing permissions and limitations
%% under the License.
%%
%% -------------------------------------------------------------------
-module(xq_types).

-include("xqerl.hrl").

-export_type([sequence/1,
              xq_item/0,
              context/0]).

-export_type([xml_node/0,
              xml_attribute/0,
              xml_comment/0,
              xml_document/0,
              xml_element/0,
              xml_namespace/0,
              xml_pi/0,
              xml_text/0]).

-export_type([xs_anyType/0,
              xs_anySimpleType/0,
              xs_anyAtomicType/0,
              xs_unsignedInt/0,        
              xs_string/0,             
              xs_boolean/0,            
              xs_decimal/0,            
              xs_float/0,              
              xs_double/0,             
              xs_duration/0,           
              xs_dateTime/0,           
              xs_time/0,               
              xs_date/0,               
              xs_gYearMonth/0,         
              xs_gYear/0,              
              xs_gMonthDay/0,          
              xs_gDay/0,               
              xs_gMonth/0,             
              xs_hexBinary/0,          
              xs_base64Binary/0,       
              xs_anyURI/0,             
              xs_QName/0,    
              xs_NOTATION/0,          
              xs_normalizedString/0,   
              xs_token/0,              
              xs_language/0,           
              xs_NMTOKEN/0,            
              xs_Name/0,               
              xs_NCName/0,             
              xs_ID/0,                 
              xs_IDREF/0,              
              xs_ENTITY/0,             
              xs_integer/0,            
              xs_nonPositiveInteger/0, 
              xs_negativeInteger/0,    
              xs_long/0,               
              xs_int/0,                
              xs_short/0,              
              xs_byte/0,               
              xs_nonNegativeInteger/0, 
              xs_unsignedLong/0,       
              xs_unsignedShort/0,      
              xs_unsignedByte/0,       
              xs_positiveInteger/0,    
              xs_yearMonthDuration/0,  
              xs_dayTimeDuration/0,    
              xs_untypedAtomic/0,      
              xs_dateTimeStamp/0,      
              xs_NMTOKENS/0,           
              xs_ENTITIES/0,           
              xs_IDREFS/0,
              %
              xs_error/0,
              xs_numeric/0]).

-export_type([xq_function/0,
              xq_array/0,
              xq_map/0,
              xq_map/2
             ]).

% Context map
-type context() :: [] | map().

-type sequence(L) :: list(L) | L.

-type xq_item() :: xs_anyAtomicType() | xml_node() | xq_function() | #xqRange{}.

-type xml_node() :: #{nk := _, _ := _} |
        xml_attribute() | xml_comment() | xml_document() | 
        xml_element() | xml_namespace() | xml_pi() | xml_text().

-type xml_attribute() :: #xqAttributeNode{} | #{nk := attribute, _ := _}.
-type xml_comment() :: #xqCommentNode{} | #{nk := comment, _ := _}.
-type xml_document() :: #xqDocumentNode{} | #{nk := document, _ := _}.
-type xml_element() :: #xqElementNode{} | #{nk := element, _ := _}.
-type xml_namespace() :: #xqNamespaceNode{} .
-type xml_pi() :: #xqProcessingInstructionNode{} | #{nk := 'processing-instruction', _ := _}.
-type xml_text() :: #xqTextNode{} | #{nk := text, _ := _}.



-type xs_error() :: no_return().  

-type xs_anyType() :: xs_anySimpleType() | xs_complexType().

-type xs_anySimpleType() :: xs_anyAtomicType() | xs_listType() | xs_unionType().


-type xs_listType() :: xs_NMTOKENS() | xs_ENTITIES() | xs_IDREFS().
-type xs_NMTOKENS() :: 
        #xqAtomicValue{type :: 'xs:NMTOKENS',
                       value :: binary()}.  
-type xs_ENTITIES() :: 
        #xqAtomicValue{type :: 'xs:ENTITIES',
                       value :: binary()}.  
-type xs_IDREFS() :: 
        #xqAtomicValue{type :: 'xs:IDREFS',
                       value :: binary()}.  

-type xs_unionType() :: xs_numeric().
-type xs_numeric() :: xs_decimal() | xs_float() | xs_double().

-type xs_complexType() :: xs_untyped().
-type xs_untyped() :: any().

-type xs_anyAtomicType() ::
        xs_untypedAtomic() |
        xs_dateTime() |
        xs_duration() |
        xs_time() |
        xs_date() |
        xs_decimal() |
        xs_string() | 
        xs_float() |
        xs_double() |
        xs_gYearMonth() |
        xs_gYear() |
        xs_gMonthDay() |
        xs_gMonth() |
        xs_gDay() |
        xs_boolean() |
        xs_base64Binary() |
        xs_hexBinary() |
        xs_anyURI() |
        xs_QName() |
        xs_NOTATION().
-type xs_untypedAtomic() :: 
        #xqAtomicValue{type :: 'xs:untypedAtomic',
                       value :: binary()}.  
-type xs_decimal() :: 
        #xqAtomicValue{type :: 'xs:decimal',
                       value :: #xsDecimal{}} |
        xs_integer().  
-type xs_float() :: 
        #xqAtomicValue{type :: 'xs:float',
                       value :: float() | nan | neg_zero | 
                         infinity | neg_infinity }.  
-type xs_double() :: 
        float() | nan | neg_zero | infinity | neg_infinity.  

-type xs_time() :: 
        #xqAtomicValue{type :: 'xs:time',
                       value :: #xsDateTime{year :: 0,
                                            month :: 0,
                                            day :: 0}}.  
-type xs_date() :: 
        #xqAtomicValue{type :: 'xs:date',
                       value :: #xsDateTime{hour :: 0,
                                            minute :: 0,
                                            second :: #xsDecimal{int :: 0,
                                                                 scf :: 0}}}.  
-type xs_gYearMonth() :: 
        #xqAtomicValue{type :: 'xs:gYearMonth',
                       value :: #xsDateTime{day :: 0,
                                            hour :: 0,
                                            minute :: 0,
                                            second :: #xsDecimal{int :: 0,
                                                                 scf :: 0}}}.  
-type xs_gYear() :: 
        #xqAtomicValue{type :: 'xs:gYear',
                       value :: #xsDateTime{month :: 0,
                                            day :: 0,
                                            hour :: 0,
                                            minute :: 0,
                                            second :: #xsDecimal{int :: 0,
                                                                 scf :: 0}}}.  
-type xs_gMonthDay() :: 
        #xqAtomicValue{type :: 'xs:gMonthDay',
                       value :: #xsDateTime{year :: 0,
                                            hour :: 0,
                                            minute :: 0,
                                            second :: #xsDecimal{int :: 0,
                                                                 scf :: 0}}}.  
-type xs_gMonth() :: 
        #xqAtomicValue{type :: 'xs:gMonth',
                       value :: #xsDateTime{year :: 0,
                                            day :: 0,
                                            hour :: 0,
                                            minute :: 0,
                                            second :: #xsDecimal{int :: 0,
                                                                 scf :: 0}}}.  
-type xs_gDay() :: 
        #xqAtomicValue{type :: 'xs:gDay',
                       value :: #xsDateTime{year :: 0,
                                            month :: 0,
                                            hour :: 0,
                                            minute :: 0,
                                            second :: #xsDecimal{int :: 0,
                                                                 scf :: 0}}}.  
-type xs_boolean() :: boolean().
-type xs_base64Binary() :: 
        #xqAtomicValue{type :: 'xs:base64Binary',
                       value :: binary()}.  
-type xs_hexBinary() :: 
        #xqAtomicValue{type :: 'xs:hexBinary',
                       value :: binary()}.  
-type xs_anyURI() :: 
        #xqAtomicValue{type :: 'xs:anyURI',
                       value :: binary()}.  
-type xs_QName() :: 
        #xqAtomicValue{type :: 'xs:QName',
                       value :: #qname{}}.  
-type xs_NOTATION() :: 
        #xqAtomicValue{type :: 'xs:NOTATION',
                       value :: #qname{}}.  

-type xs_dateTime() :: 
        #xqAtomicValue{type :: 'xs:dateTime',
                       value :: #xsDateTime{}} |
        xs_dateTimeStamp().  
-type xs_dateTimeStamp() :: % .*(Z|(\+|-)[0-9][0-9]:[0-9][0-9])
        #xqAtomicValue{type :: 'xs:dateTimeStamp',
                       value :: #xsDateTime{}}.  

-type xs_duration() :: 
        #xqAtomicValue{type :: 'xs:duration',
                       value :: #xsDateTime{}} |
        xs_yearMonthDuration() | xs_dayTimeDuration().  
-type xs_yearMonthDuration() :: 
        #xqAtomicValue{type :: 'xs:yearMonthDuration',
                       value :: #xsDateTime{day :: 0,
                                            hour :: 0,
                                            minute :: 0,
                                            second :: #xsDecimal{int :: 0,
                                                                 scf :: 0}}}.  
-type xs_dayTimeDuration() :: 
        #xqAtomicValue{type :: 'xs:dayTimeDuration',
                       value :: #xsDateTime{year :: 0, month :: 0}}.  

-type xs_integer() :: % [\-+]?[0-9]+
        integer() |
        xs_nonPositiveInteger() | xs_long() | xs_nonNegativeInteger().  
-type xs_nonPositiveInteger() :: % [\-+]?[0-9]+ 
        #xqAtomicValue{type :: 'xs:nonPositiveInteger', 
                       value :: 0 | neg_integer()} |
        xs_negativeInteger().  
-type xs_negativeInteger() :: % [\-+]?[0-9]+ 
        #xqAtomicValue{type :: 'xs:negativeInteger',
                       value :: neg_integer()}.  
-type xs_long() :: % [\-+]?[0-9]+
        #xqAtomicValue{type :: 'xs:long',
                       value :: -9223372036854775808..9223372036854775807} |
        xs_int().  
-type xs_int() :: % [\-+]?[0-9]+ 
        #xqAtomicValue{type :: 'xs:int',
                       value :: -2147483648..2147483647} |
        xs_short().  
-type xs_short() :: % [\-+]?[0-9]+
        #xqAtomicValue{type :: 'xs:short',
                       value :: -32768..32767} |
        xs_byte().  
-type xs_byte() :: % [\-+]?[0-9]+
        #xqAtomicValue{type :: 'xs:byte',
                       value :: -128..127}.  
-type xs_nonNegativeInteger() :: % [\-+]?[0-9]+
        #xqAtomicValue{type :: 'xs:nonNegativeInteger', 
                       value :: non_neg_integer()} |
        xs_unsignedLong() | xs_positiveInteger().  
-type xs_unsignedLong() :: % [\-+]?[0-9]+
        #xqAtomicValue{type :: 'xs:unsignedLong',
                       value :: 0..18446744073709551615} |
        xs_unsignedInt().  
-type xs_unsignedInt() :: % [\-+]?[0-9]+ 
        #xqAtomicValue{type :: 'xs:unsignedInt',
                       value :: 0..4294967295} |
        xs_unsignedShort().  
-type xs_unsignedShort() :: % [\-+]?[0-9]+
        #xqAtomicValue{type :: 'xs:unsignedShort',
                       value :: 0..65535} |
        xs_unsignedByte().  
-type xs_unsignedByte() :: % [\-+]?[0-9]+
        #xqAtomicValue{type :: 'xs:unsignedByte',
                       value :: 0..255}.  
-type xs_positiveInteger() :: % [\-+]?[0-9]+
        #xqAtomicValue{type :: 'xs:positiveInteger',
                       value :: pos_integer()}.  


-type xs_string() :: 
        binary() |
        xs_normalizedString().  
-type xs_normalizedString() :: 
        #xqAtomicValue{type :: 'xs:normalizedString',
                       value :: binary()} |
        xs_token().  
-type xs_token() :: 
        #xqAtomicValue{type :: 'xs:token', 
                       value :: binary()} |
        xs_language() | xs_NMTOKEN() | xs_Name().  
-type xs_language() :: % [a-zA-Z]{1,8}(-[a-zA-Z0-9]{1,8})*
        #xqAtomicValue{type :: 'xs:language',
                       value :: binary()}.  
-type xs_NMTOKEN() :: % \c+
        #xqAtomicValue{type :: 'xs:NMTOKEN',
                       value :: binary()}.  
-type xs_Name() :: % \i\c*
        #xqAtomicValue{type :: 'xs:Name',
                       value :: binary()} | 
        xs_NCName().  
-type xs_NCName() :: % \i\c* ∩ [\i-[:]][\c-[:]]*
        #xqAtomicValue{type :: 'xs:NCName',
                       value :: binary()} |
        xs_ID() | xs_IDREF() | xs_ENTITY() .  
-type xs_ID() :: % \i\c* ∩ [\i-[:]][\c-[:]]*
        #xqAtomicValue{type :: 'xs:ID',
                       value :: binary()}.  
-type xs_IDREF() :: % \i\c* ∩ [\i-[:]][\c-[:]]* 
        #xqAtomicValue{type :: 'xs:IDREF',
                       value :: binary()}.  
-type xs_ENTITY() :: % \i\c* ∩ [\i-[:]][\c-[:]]*
        #xqAtomicValue{type :: 'xs:ENTITY',
                       value :: binary()}.  


-type xq_function() :: fun() | #xqFunction{} | xq_array() | xq_map().
-type xq_array() :: {array, [xq_item()]}.
-type xq_map() :: #{ map_key() => {xs_anyAtomicType(), xq_item()} }.
-type xq_map(K,V) :: #{ map_key() => {K, V} }.

%-type xml_char() :: 16#1..16#D7FF | 16#E000..16#FFFD | 16#10000..16#10FFFF.

-type map_key() :: 
        binary() | {number, #xsDecimal{}} | {number, atom()} |
        {duration, #xsDateTime{}} | {time, #xsDateTime{}} | 
        {binary(), binary()} | {atom(), any()}.


 