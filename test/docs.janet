(use ../src/helper/io)
(use ../src/helper/path)

(use ../src/markup)
(use ../src/graph-of-thought)
(use ../src/solution)

# --------------------------------------------

(let [subdir "./test/notes/simple-doc/"
      raw-db   (load-deep subdir)
      db       (finalize-db raw-db nil @{})
      id       :root
      article  ((db id) :content)
      res      (mu/to-html article |(string "/dist/" $))]
  (file/put "./play.html" res))
