package by.atmm.demo.users

import org.springframework.data.repository.CrudRepository

interface UserRepository : CrudRepository<User, Int>