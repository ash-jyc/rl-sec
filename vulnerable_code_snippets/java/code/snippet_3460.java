import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
class UserService {
    @Autowired
    private UserRepository userRepository;

    public User getUser(Long id) {
        return userRepository.findById(id).orElseThrow();
    }
}

@Service
class AdminService {
    @Autowired
    private UserRepository userRepository;

    public void deleteUser(Long id) {
        userRepository.deleteById(id);
    }
}