VERSION=$(cat metadata.yaml | grep version | cut -d ":" -f 2 | tr -d "[:blank:]")
OUTPUT="JournalOfAnthonyHenday-${VERSION}.epub"
pandoc --output "${OUTPUT}" \
       --epub-chapter-level=2 \
  metadata.yaml \
  README.md \
  00-title.md \
  01-june-1754.md \
  02-july-1754.md \
  03-august-1754.md \
  04-september-1754.md \
  05-october-1754.md \
  06-november-1754.md \
  07-december-1754.md \
  08-january-1755.md \
  09-february-1755.md \
  10-march-1755.md \
  11-april-1755.md \
  12-may-1755.md \
  13-june-1755.md \
  00-notes.md
echo Built "${OUTPUT}"
