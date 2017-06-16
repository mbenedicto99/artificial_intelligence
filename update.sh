
DAT=$(date +%Y%m%d)

  git init
  git add *
  git commit -m "commit$(DAT)"
  #git remote add origin https://github.com/mbenedicto99/artificial_intelligence.git
  git push -u origin master
