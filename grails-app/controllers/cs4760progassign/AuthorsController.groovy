package cs4760progassign

class AuthorsController {

    static final boolean debugIndex = true

    def index() {

        def authors = Author.listOrderByName();
        def bks = Book.listOrderByTitle();
        def authorList = []

        for (int i = 0; i < authors.size; i++) {

            def bkAuthor = [:]
            bkAuthor.put('author', authors[i].name);

            def bkList = []
            for (int j = 0; j < bks.size; j++) {
                if (bks[j].authorId == authors[i].id) {
                    bkList.push(bks[j].title);
                }
            }
            bkAuthor.put('books', bkList);

            authorList << bkAuthor
        }

        println(authorList)
        render view: "index", model: [authorList: authorList]
    }
}
