% pages_base=`{echo $pages_doc | sed 's|sites|http:/|'} # this is not the way
% page_last=`{echo $page_num $page_tot | awk '{l=int($1/50)*50+50; if(l>$2) l=$2; print l}'}
<h2 style="text-transform:capitalize">%{echo $name | sed 's/_/ /g'%}
% echo '('$page_num'-'$page_last')'
</h2>
<div class="top-menu">
% if (test $page_tot -gt 50){
% pagelist | awk '
%	(NR-1)%50 != 0 {next}
%	{nf=NR+50-1}
%	NR+50>'$page_tot' {nf='$page_tot'}
%	{sub($0, "<a href=\"'$pages_base'/_" NR "\">(" NR "-" nf ")</a>")
%	print}'
% }
</div>
<div style="text-align:right">
<a href="%{echo -n `{ls -p $pages_file}%}">%{echo -n `{ls -p $pages_file}%}</a>
</div>
% pagethumbs | sed -n $"page_num','$page_last'p'
<br>
% awk 'BEGIN {s=50; n='$page_num'+s; if(n<'$page_tot')
%	print "<div style=\"text-align:right\"><a href=\"'$pages_base'/_" n "\">(next " s ")</a></div>"}'
