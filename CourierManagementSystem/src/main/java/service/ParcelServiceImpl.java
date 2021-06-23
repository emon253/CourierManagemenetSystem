package service;

import domain.ParcelRequest;
import repository.ParcelRequestRep;
import repository.ParcelRequestRepImpl;

public class ParcelServiceImpl implements ParcelService {
	private ParcelRequestRep prr;
	

	public ParcelServiceImpl(ParcelRequestRep prr) {
		
		this.prr = prr;
	}


	@Override
	public ParcelRequest findRequestParcelBypid(String pid) {
		// TODO Auto-generated method stub
		return prr.fetchParcelInfoByid(pid);
	}

}
