package TikiShopMVC.Service.User;

import org.springframework.stereotype.Service;

import TikiShopMVC.Dto.PaginateDTO;

@Service
public interface IPaginateService {
	public PaginateDTO GetInforPaginate(int totalData, int limit, int currentPage);
}
