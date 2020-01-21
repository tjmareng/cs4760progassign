package cs4760progassign

class Author {

    String name
    List books

    static hasMany = [books: Book]

    static constraints = {
    }

    String toString(){
        "${name}"
    }
}
