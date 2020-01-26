package cs4760progassign

import static cs4760progassign.UserRole.*

class BootStrap {

    def init = { servletContext ->
        new Author(name: "Stephen King")
                .addToBooks(new Book(title: "The Stand", publishYear: 1978))
                .addToBooks(new Book(title: "The Shining", publishYear: 1977))
                .save()

        new Author(name: "Mark Twain")
                .addToBooks(new Book(title: "Tom Sawyer", publishYear: 1876))
                .addToBooks(new Book(title: "Huckelberry Finn", publishYear: 1884))
                .save()

        // Add for creating Roles and Users
        def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
        def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

        def testAdmin = new User(username: 'admin', password: 'password')
        testAdmin.save(flush: true)

        def testUser = new User(username: 'user', password: 'password')
        testUser.save(flush: true)

        create testAdmin, adminRole, true
        create testUser, userRole, true

        withSession {
            it.flush()
            it.clear()
        }
    }

    def destroy = {
    }
}