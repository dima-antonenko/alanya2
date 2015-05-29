
ProjectCategory.create!([
  {title: "Алания", description: "<p>zzzz</p>\r\n", avatar: "_________________2015-04-12_09_05_20.png", meta_title: "333", meta_description: nil, meta_keywords: nil, meta_copyright: "44"},
  {title: "Кестель", description: "z", avatar: "z", meta_title: nil, meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Каргыджак", description: "<p>zzzz</p>\r\n", avatar: nil, meta_title: "333", meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Категория 2", description: "<p>zzz</p>\r\n", avatar: "wallpaper__29_.jpg", meta_title: "111", meta_description: "222", meta_keywords: "333", meta_copyright: "444"},
  {title: "Авсаллар", description: "<p>zzzz</p>\r\n", avatar: nil, meta_title: "333", meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Оба", description: "<p>zzzz</p>\r\n", avatar: nil, meta_title: "333", meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Тосмур", description: "<p>zzzz</p>\r\n", avatar: nil, meta_title: "333", meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Кестель", description: "<p>zzzz</p>\r\n", avatar: nil, meta_title: "333", meta_description: nil, meta_keywords: nil, meta_copyright: nil}
])
Manager.create!([
  {avatar: "1.png", name: "Менеджер 1", description: "главный бугалтер", skype: "skypename", languages: "English", email: "1@mail.ru", phone: "7 1235 34545"},
  {avatar: "2.png", name: "Менеджер 3", description: "главный бугалтер", skype: "skypename", languages: "English", email: "1@mail.ru", phone: "7 1235 34545"},
  {avatar: "3.png", name: "Менеджер 4", description: "главный бугалтер", skype: "skypename", languages: "English", email: "1@mail.ru", phone: "7 1235 34545"},
  {avatar: "4.png", name: "Менеджер 5", description: "главный бугалтер", skype: "skypename", languages: "English", email: "1@mail.ru", phone: "7 1235 34545"},
  {avatar: "6.png", name: "Менеджер 6", description: "главный бугалтер", skype: "skypename", languages: "English", email: "1@mail.ru", phone: "7 1235 34545"}
])
Manager::HABTM_Projects.create!([
  {project_id: 1, manager_id: 4},
  {project_id: 1, manager_id: 5},
  {project_id: 1, manager_id: 1},
  {project_id: 3, manager_id: 4},
  {project_id: 2, manager_id: 4},
  {project_id: 5, manager_id: 3},
  {project_id: 6, manager_id: 4},
  {project_id: 9, manager_id: 6},
  {project_id: 9, manager_id: 4}
])
ManagersProject.create!([
  {project_id: 1, manager_id: 4},
  {project_id: 1, manager_id: 5},
  {project_id: 1, manager_id: 1},
  {project_id: 3, manager_id: 4},
  {project_id: 2, manager_id: 4},
  {project_id: 5, manager_id: 3},
  {project_id: 6, manager_id: 4},
  {project_id: 9, manager_id: 6},
  {project_id: 9, manager_id: 4}
])

Project.create!([
  {name: "Основной  проект", sku: "1234", description: "<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\r\n\r\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\r\n\r\n<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\r\n\r\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\r\n", start_price: "10000", final_price: "20000", type_deal: "sale", rooms: "1 + 0", area: 100, condition: "under_construction", to_center: 10, mount_build: 2, year_build: 2000, has_conditioning: true, has_white_goods: true, has_furniture: true, has_water_heater: true, has_tapu: true, has_iskana: true, avatar: "1.png", type_object: "flat", to_airport: 5, meta_title: "keywords", meta_description: "", meta_keywords: "", meta_copyright: nil, project_category_id: 1, some_manager: 1},
  {name: "Проект 2", sku: "1234", description: "<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\n\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\n\n<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\n\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\n", start_price: "1000", final_price: "2000", type_deal: "none", rooms: " 1 + 0", area: 200, condition: "under_construction", to_center: 5, mount_build: 1, year_build: 1900, has_conditioning: true, has_white_goods: true, has_furniture: false, has_water_heater: false, has_tapu: false, has_iskana: false, avatar: "1.png", type_object: "flat", to_airport: 6, meta_title: "", meta_description: "", meta_keywords: "", meta_copyright: nil, project_category_id: 2, some_manager: 3},
  {name: "Проект 3", sku: "1234", description: "<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\n\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\n\n<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\n\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\n", start_price: "2000", final_price: "4000", type_deal: "none", rooms: "1 + 2", area: 200, condition: "under_construction", to_center: 200, mount_build: 10, year_build: 1990, has_conditioning: true, has_white_goods: true, has_furniture: false, has_water_heater: false, has_tapu: false, has_iskana: false, avatar: "1.png", type_object: "flat", to_airport: 100, meta_title: "", meta_description: "", meta_keywords: "", meta_copyright: nil, project_category_id: 3, some_manager: 4},
  {name: "Проект 4", sku: "1234", description: "<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\n\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\n\n<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\n\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\n", start_price: "5000", final_price: "10000", type_deal: "sale", rooms: "1 + 2", area: 1000, condition: "under_construction", to_center: 20, mount_build: 10, year_build: 1999, has_conditioning: true, has_white_goods: true, has_furniture: true, has_water_heater: true, has_tapu: true, has_iskana: true, avatar: "1.png", type_object: "flat", to_airport: 10, meta_title: "", meta_description: nil, meta_keywords: nil, meta_copyright: nil, project_category_id: 4, some_manager: 6},
  {name: "Проект 5", sku: "02345", description: "<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\n\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\n\n<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\n\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\n", start_price: "1000", final_price: "2000", type_deal: "sale", rooms: "1 + 3", area: 200, condition: "under_construction", to_center: 20, mount_build: 9, year_build: 2009, has_conditioning: true, has_white_goods: true, has_furniture: true, has_water_heater: true, has_tapu: true, has_iskana: true, avatar: "11.png", type_object: "flat", to_airport: 10, meta_title: "33", meta_description: nil, meta_keywords: nil, meta_copyright: nil, project_category_id: 7, some_manager: 5},
  {name: "Проект 6", sku: "001", description: "<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\n\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\n\n<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\n\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\n", start_price: "0", final_price: "2000", type_deal: "sale", rooms: "1 + 3", area: 2000, condition: "none", to_center: 10, mount_build: 9, year_build: 2011, has_conditioning: true, has_white_goods: true, has_furniture: false, has_water_heater: false, has_tapu: false, has_iskana: false, avatar: "3.png", type_object: "flat", to_airport: 11, meta_title: "333", meta_description: "", meta_keywords: "", meta_copyright: nil, project_category_id: 6, some_manager: 4}
])
Project::HABTM_Managers.create!([
  {project_id: 1, manager_id: 4},
  {project_id: 1, manager_id: 5},
  {project_id: 1, manager_id: 1},
  {project_id: 3, manager_id: 4},
  {project_id: 2, manager_id: 4},
  {project_id: 5, manager_id: 3},
  {project_id: 6, manager_id: 4},
  {project_id: 9, manager_id: 6},
  {project_id: 9, manager_id: 4}
])
ProjectApplicationMail.create!([
  {project_id: 1, name: "dima", email: "d.antonenko94@mail.ru"},
  {project_id: 1, name: "dima", email: "d.antonenko94@mail.ru"},
  {project_id: 1, name: "dima", email: "d.antonenko94@mail.ru"},
  {project_id: 1, name: "dima", email: "d.antonenko94@mail.ru"},
  {project_id: 1, name: "dima", email: "d.antonenko94@mail.ru"},
  {project_id: 1, name: "dima", email: "d.antonenko94@mail.ru"},
  {project_id: 1, name: "dima", email: "d.antonenko94@mail.ru"}
])
ProjectAttacment.create!([
  {project_id: 3, image: "nastol.com.ua_138324.jpg", place: nil},
  {project_id: 3, image: "nastol.com.ua_138448.jpg", place: nil},
  {project_id: 3, image: "nastol.com.ua_138571.jpg", place: nil},
  {project_id: 3, image: "nastol.com.ua_138609.jpg", place: nil},
  {project_id: 3, image: "wallpaper__29_.jpg", place: nil},
  {project_id: 3, image: "wallpaper__77_.jpg", place: nil},
  {project_id: 4, image: "nastol.com.ua_138324.jpg", place: nil},
  {project_id: 4, image: "nastol.com.ua_138448.jpg", place: nil},
  {project_id: 4, image: "nastol.com.ua_138571.jpg", place: nil},
  {project_id: 4, image: "nastol.com.ua_138609.jpg", place: nil},
  {project_id: 4, image: "wallpaper__29_.jpg", place: nil},
  {project_id: 4, image: "wallpaper__77_.jpg", place: nil},
  {project_id: 5, image: "2.png", place: nil},
  {project_id: 5, image: "3.png", place: nil},
  {project_id: 5, image: "4.png", place: nil},
  {project_id: 5, image: "5.png", place: nil},
  {project_id: 5, image: "6.png", place: nil},
  {project_id: 5, image: "7.png", place: nil},
  {project_id: 5, image: "8.png", place: nil},
  {project_id: 5, image: "9.png", place: nil},
  {project_id: 5, image: "10.png", place: nil},
  {project_id: 5, image: "11.png", place: nil},
  {project_id: 1, image: "2.png", place: nil},
  {project_id: 1, image: "3.png", place: nil},
  {project_id: 1, image: "4.png", place: nil},
  {project_id: 1, image: "5.png", place: nil},
  {project_id: 1, image: "6.png", place: nil},
  {project_id: 1, image: "7.png", place: nil},
  {project_id: 1, image: "8.png", place: nil},
  {project_id: 1, image: "9.png", place: nil},
  {project_id: 1, image: "10.png", place: nil},
  {project_id: 1, image: "11.png", place: nil},
  {project_id: 6, image: "2.png", place: nil},
  {project_id: 6, image: "3.png", place: nil},
  {project_id: 6, image: "4.png", place: nil},
  {project_id: 6, image: "5.png", place: nil},
  {project_id: 6, image: "6.png", place: nil},
  {project_id: 6, image: "7.png", place: nil},
  {project_id: 6, image: "8.png", place: nil},
  {project_id: 6, image: "9.png", place: nil},
  {project_id: 6, image: "10.png", place: nil},
  {project_id: 6, image: "11.png", place: nil},
  {project_id: 7, image: "2.png", place: nil},
  {project_id: 7, image: "3.png", place: nil},
  {project_id: 7, image: "4.png", place: nil},
  {project_id: 7, image: "5.png", place: nil},
  {project_id: 7, image: "6.png", place: nil},
  {project_id: 7, image: "7.png", place: nil},
  {project_id: 7, image: "8.png", place: nil},
  {project_id: 7, image: "9.png", place: nil},
  {project_id: 7, image: "10.png", place: nil},
  {project_id: 7, image: "11.png", place: nil},
  {project_id: 8, image: "1.png", place: nil},
  {project_id: 8, image: "2.png", place: nil},
  {project_id: 8, image: "3.png", place: nil},
  {project_id: 8, image: "4.png", place: nil},
  {project_id: 8, image: "5.png", place: nil},
  {project_id: 8, image: "6.png", place: nil},
  {project_id: 8, image: "7.png", place: nil},
  {project_id: 8, image: "8.png", place: nil},
  {project_id: 8, image: "9.png", place: nil},
  {project_id: 8, image: "10.png", place: nil},
  {project_id: 9, image: "1.png", place: nil},
  {project_id: 9, image: "2.png", place: nil},
  {project_id: 9, image: "4.png", place: nil},
  {project_id: 9, image: "5.png", place: nil},
  {project_id: 9, image: "6.png", place: nil},
  {project_id: 9, image: "7.png", place: nil},
  {project_id: 9, image: "8.png", place: nil},
  {project_id: 9, image: "9.png", place: nil},
  {project_id: 9, image: "10.png", place: nil},
  {project_id: 9, image: "11.png", place: nil}
])
ProjectCategoryAttacment.create!([
  {project_category_id: 1, image: "nastol.com.ua_138609.jpg"},
  {project_category_id: 1, image: "nastol.com.ua_138448.jpg"},
  {project_category_id: 4, image: "1920x1080_75.jpg"},
  {project_category_id: 4, image: "nastol.com.ua_138324.jpg"},
  {project_category_id: 4, image: "nastol.com.ua_138448.jpg"},
  {project_category_id: 4, image: "nastol.com.ua_138571.jpg"},
  {project_category_id: 4, image: "nastol.com.ua_138609.jpg"}
])
Question.create!([
  {project_id: 1, name: "dima", email: "d.antoneko94@mail.t", phone: "124556", skype: "progrmmer_1209", message: "zdkfjkgj"},
  {project_id: 1, name: "zz", email: "1@mail.ry", phone: "124", skype: "42342", message: "42342"},
  {project_id: 1, name: "1", email: "", phone: "", skype: "", message: ""},
  {project_id: 1, name: "1", email: "", phone: "", skype: "", message: ""},
  {project_id: 1, name: "Дмитрий", email: "1@mail.ry", phone: "123456", skype: "progrmmer_1209", message: "Текст вопроса"},
  {project_id: 1, name: "Дмитрий", email: "1@mail.ry", phone: "123456", skype: "progrmmer_1209", message: "Текст вопроса"},
  {project_id: 1, name: "dima", email: "", phone: "", skype: "", message: ""},
  {project_id: 1, name: "dima", email: "", phone: "", skype: "", message: ""}
])