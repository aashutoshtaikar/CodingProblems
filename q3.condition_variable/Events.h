#include<mutex>
#include<condition_variable>

class auto_event{
public:
    explicit auto_event():current_thread(0){}

    void wait(unsigned int thread_num){
        std::unique_lock<std::mutex> lock(m_mutex);
        m_cv.wait(lock,[&](){return thread_num == (current_thread+1);});  
    }

    void signal(){
        std::unique_lock<std::mutex> lock(m_mutex);
        current_thread++;
        m_cv.notify_all();
    }

private:
    std::mutex m_mutex;
    std::condition_variable m_cv;
    unsigned int current_thread;
};