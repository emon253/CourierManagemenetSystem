package service;

import domain.ParcelRequest;

public interface ParcelService {
	ParcelRequest findRequestParcelBypid(String pid);
}
