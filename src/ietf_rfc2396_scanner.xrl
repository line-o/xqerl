%% only used for validating URIs
Definitions.

%ALPHA = [A-Za-z]
%ALPHANUM = [0-9A-Za-z]
%LOWALPHA = [a-z]
%UPALPHA = [A-Z]
%DIGIT = [0-9]
%MARK = [\-\_\.\!\~\*\'\(\)]
%HEX = [0-9A-Fa-f]

% uri characters
RESERVED = [\'\/\?\:\@\&\=\+\$\,\[\]]
UNRESERVED = [\-\_\.\!\~\*\'\(\)]|[0-9A-Za-z]
ESCAPED = [%][0-9A-Fa-f][0-9A-Fa-f]
BADESCAPED = [%]

BIG = &#[0-9]+;
% excluded characters
CONTROL = [\x00-\x1F\x7F]
SPACE = [\s]
DELIMS = [\<\>\#\"\;]
UNWISE = [\{\}\|\\\^\`]

SCHEME = (file|http|https|ftp|ssh|sftp|tftp)://
%SCHEME = [a-zA-Z]([0-9A-Za-z]|\+|\-|\.)+
Rules.
 
{CONTROL}|{UNWISE} : {token,{excluded,TokenLine,TokenChars}}.
{DELIMS} : {token,{delimiter,TokenLine,TokenChars}}.
{RESERVED} : {token,{reserved,TokenLine,TokenChars}}.
{SPACE} : {token,{unreserved,TokenLine,TokenChars}}.
{UNRESERVED} : {token,{unreserved,TokenLine,TokenChars}}.
{ESCAPED} : {token,{escaped,TokenLine,TokenChars}}.
{BADESCAPED} : {token,{excluded,TokenLine,TokenChars}}.
{BIG} : {token,{escaped,TokenLine,TokenChars}}.
{SCHEME} : {token,{scheme,TokenLine,TokenChars}}.
Erlang code.
