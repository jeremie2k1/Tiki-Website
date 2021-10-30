package TikiShopMVC.Service.User;

import org.springframework.stereotype.Service;

import TikiShopMVC.Dto.PaginateDto;

@Service
public interface IPaginateService {
	public PaginateDto GetInforPaginate(int totalData, int limit, int currentPage);
}
