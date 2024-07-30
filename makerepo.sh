#!/bin/sh
# makerepo.sh
# Created Sat Jul 20 2024 by Uwe Brauer oub@mat.ucm.es
# $Id$
# $Log$

#!/bin/sh
# makerepo-rebase.sh
# Created Sat Dec 10 2022 by Uwe Brauer oub@mat.ucm.es
# $Id$
# $Log$

# 1. The creation and pull step

hg init
echo "[paths]" >> .hg/hgrc
echo "gitlab = git+ssh://git@gitlab.com:kalthad/hggit-dan-branches.git" >> .hg/hgrc
echo "# based on branches-and-stuff" >> .hg/hgrc
echo "# changeset: 613cf16d4c84f" >> .hg/hgrc
echo "[experimental]" >> .hg/hgrc
echo "hg-git-mode = branches" >> .hg/hgrc
echo "[hggit]" >> .hg/hgrc
echo "usephases = yes" >> .hg/hgrc
echo "[git]" >> .hg/hgrc
echo "defaultbranch = default" >> .hg/hgrc
echo "use_namespaces = True " >> .hg/hgrc

echo "HG: First commit" >> test.org
hg addremove
hg commit -m "HG: First commit: default"
echo "HG Second" >> test.org
hg commit  -m "HG: Second commit: default"
echo "HG Third" >> test.org
hg commit -m "HG: Third commit: default"
echo "HG Forth" >> test.org
hg commit  -m "HG: Fourth commit: default"
hg up 1
hg branch feature
echo "HG: Fifth" >> test.org
hg commit  -m "HG: Fifth commit: feature"
echo "HG Six" >> test.org
hg commit  -m "HG: Six commit: feature"
