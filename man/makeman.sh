rel_month='SEPTEMBER 2013'
if [ ! -d html ]; then
	mkdir html
fi
sed -e "s/{{REL_MONTH}}/$rel_month/" < man_pod.pl > man_pod_rel.tmp
pod2man man_pod_rel.tmp --section=1 --name=coan --center="User Commmands" --date="burroingroingjoing.com" --release="$rel_month" > coan.1
pod2html --noindex --title="Coan Man Page" --infile=man_pod_rel.tmp --outfile=html/coan_man_1.html
rm -f *.tmp
