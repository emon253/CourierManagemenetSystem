package domain;

public class ParcelTracking {
	String pid;
	String currentSession;
	String sessionTime;
	
	public ParcelTracking(String pid, String currentSession, String sessionTime) {
		this.pid = pid;
		this.currentSession = currentSession;
		this.sessionTime = sessionTime;
	}

	public ParcelTracking() {
	
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getCurrentSession() {
		return currentSession;
	}

	public void setCurrentSession(String currentSession) {
		this.currentSession = currentSession;
	}

	public String getSessionTime() {
		return sessionTime;
	}

	public void setSessionTime(String sessionTime) {
		this.sessionTime = sessionTime;
	}
	
	
	
}
