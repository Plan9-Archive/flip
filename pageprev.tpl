<h2 style="text-transform:capitalize">%{echo $name | sed 's/_/ /g'%} (%($page_num%)/%($page_tot%))</h2>
<div class="top-menu" style="font-size:80%">
% pagelist | awk '
%	BEGIN {s=50; s2=int(s/2); n='$page_num'; t='$page_tot'; a=int(n/s2)*s2; w=a+s}
%	NR==a && NR>1 {
%		print "<a href=\"1\">first</a>";
%		if(n-s > 1)
%			print "<a href=\"" n-s "\">(-" s ")</a>";
%		print "|";
%	}
%	NR>=a && NR<w
%	NR==w && NR<=t {
%		print "|";
%		if(n+s < t)
%			print "<a href=\"" n+s "\">(+" s ")</a>";
%		print "<a href=\"" t "\">last</a>";
%	}'
</div>
<div style="text-align:right">
<a href="../%{echo -n `{ls -p $pages_file}%}">%{echo -n `{ls -p $pages_file}%}</a>
</div>
<div>
% pagenav '&larr;' '&rarr;' '::'
</div>
<img src="%{echo -n $base_path'/_werc/pages/'$name'/'`{basename $req_path}%}.png">
<div style="text-align:right">
% pagenav '&larr;' '&rarr;' '::'
</div>
