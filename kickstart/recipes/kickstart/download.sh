kickstart.download.file() {
  kickstart.download.stream $1 > $2
}

kickstart.download.stream() {
  if [ `which curl` ]; then
    curl $1
  elif [ `which wget` ]; then
    wget -qO - $1
  else
    kickstart.info "No download application found"
    exit 1
  fi
}