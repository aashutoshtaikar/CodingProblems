/*3) Use c++11 std::condition_var in solution from #3 to synchronize threads
      -- Psuedo Code --
      main:
        1) start: thread 1, thread 2, thread 3
        2) all threads block on condition_signal
        3) main signals condition_signal
        4) join all threads to prevent exit main 
	Using Event based approach
*/

#include <iostream>
#include <stdint.h>
#include <thread>
#include <mutex>
#include <chrono>
#include <string>
#include <condition_variable>

#include "Events.h"

std::mutex mtx;
int lap_num = 0;
 
void foo(trigger_event &e, unsigned int thread_num, std::string thread_name)
{
	//perform other tasks -- independent of race condition --

	std::cout << thread_name << ":Starting, waiting\n";
	std::this_thread::sleep_for(std::chrono::milliseconds(500));

	//all threads wait for a signal from main thread
	e.wait(thread_num); //  2) all threads block on condition_signal

	//shared common work to be performed
	std::cout << thread_name << ":signal received, doing work ....\n";
	if((thread_num+1)%3==0) lap_num++;
	std::this_thread::sleep_for(std::chrono::milliseconds(500));
	std::cout << thread_name << ":done with work, signal next thread \n";
	std::this_thread::sleep_for(std::chrono::milliseconds(500));

	e.signal();
}

int main()
{
	while (1)
	{
		//main lock 1 -- 1) start: thread 1, thread 2, thread 3 --
		trigger_event e;

		std::cout<<"main:starting all threads.lap:"<<lap_num<<"\n";
		std::thread thread1(foo, std::ref(e), 1, "thread1");
		std::thread thread2(foo, std::ref(e), 2, "thread2");
		std::thread thread3(foo, std::ref(e), 3, "thread3");

		thread1.join();
		thread2.join();
		thread3.join();

		std::this_thread::sleep_for(std::chrono::milliseconds(1000));
		e.signal();
		printf("main:starting thread1.\n");
	}
	return 0;
}
