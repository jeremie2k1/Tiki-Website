# Список сущностей, свойств и связей

<table>
    <thead>
        <tr>
            <th>Сущность</th>
            <th>Свойство</th>
            <th>Комментарии</th>
        </tr>
    </thead>
    <tbody>
        <!-- User -->
        <tr>
            <td rowspan=6>user</td>
        </tr>
        <tr>
            <td>id</td>
            <td>уникальный идентификационный номер юзера</td>
        </tr>
        <tr>
            <td>user</td>
            <td>имя пользователя, используемое для входа в систему</td>
        </tr>
        <tr>
            <td>password</td>
            <td>пароль для входа в систему</td>
        </tr>
        <tr>
            <td>display_name</td>
            <td>отображаемое имя пользователя в системе</td>
        </tr>
        <tr>
            <td>address</td>
            <td>адрес пользователя, для доставки</td>
        </tr>
        <tr>
            <td rowspan=19>products</td>
        </tr>
        <tr>
            <td>id</td>
            <td>уникальный идентификационный номер продукта</td>
        </tr>
        <tr>
            <td>id_category</td>
            <td>внешний ключ, идентификатор к какой категории принадлежит товар</td>
        </tr>
        <tr>
            <td>name</td>
            <td>название продукта (название книги)</td>
        </tr>
        <tr>
            <td>author</td>
            <td>автор книги</td>
        </tr>
        <tr>
            <td>imprint</td>
            <td>выходные данные издателя - это торговое название, под которым оно публикует работу</td>
        </tr>
        <tr>
            <td>published_date</td>
            <td>дата выхода книги</td>
        </tr>
        <tr>
            <td>isbn</td>
            <td>международный стандартный номер, который является коммерчески уникальным для идентификации книги</td>
        </tr>
        <tr>
            <td>lengths</td>
            <td>длина книги (количество страниц)</td>
        </tr>
        <tr>
            <td>dimensions</td>
            <td>размер книги (длина x ширина x толщина)</td>
        </tr>
        <tr>
            <td>weight</td>
            <td>вес книг</td>
        </tr>
        <tr>
            <td>price</td>
            <td>цена книги</td>
        </tr>
        <tr>
            <td>sale</td>
            <td>есть ли скидка на товар</td>
        </tr>
        <tr>
            <td>description</td>
            <td>общее описание содержания книги</td>
        </tr>
        <tr>
            <td>detail</td>
            <td>подробное описание книги</td>
        </tr>
        <tr>
            <td>highlight</td>
            <td>является ли книга основным продуктом?</td>
        </tr>
        <tr>
            <td>new_product</td>
            <td>книга выпущена недавно?</td>
        </tr>
        <tr>
            <td>rating</td>
            <td>оцените книгу (из 5)</td>
        </tr>
        <tr>
            <td>image</td>
            <td>изображение для обложки книги</td>
        </tr>
        <tr>
            <td rowspan=4>category</td>
        </tr>
        <tr>
            <td>id</td>
            <td>первичный ключ, идентификатор категории книги</td>
        </tr>
        <tr>
            <td>name</td>
            <td>название жанра книги</td>
        </tr>
        <tr>
            <td>description</td>
            <td>краткое описание жанра книги</td>
        </tr>
        <tr>
            <td rowspan=9>bill</td>
        </tr>
        <tr>
            <td>id</td>
            <td>номер заказа</td>
        </tr>
        <tr>
            <td>user</td>
            <td>имя учетной записи заказанного заказа</td>
        </tr>
        <tr>
            <td>phone</td>
            <td>номер телефона владельца заказа</td>
        </tr>
        <tr>
            <td>full_name</td>
            <td>ФИО владельца заказа</td>
        </tr>
        <tr>
            <td>address</td>
            <td>адрес доставки</td>
        </tr>
        <tr>
            <td>total</td>
            <td>общая сумма к оплате</td>
        </tr>
        <tr>
            <td>quantity</td>
            <td>количество заказанных книг</td>
        </tr>
        <tr>
            <td>note</td>
            <td>накладные или другие примечания</td>
        </tr>
        <tr>
            <td rowspan=6>bill_details</td>
        </tr>
        <tr>
            <td>id</td>
            <td>идентификатор деталей заказа каждого товара</td>
        </tr>
        <tr>
            <td>id_product</td>
            <td>идентификатор книжного продукта</td>
        </tr>
        <tr>
            <td>id_bill</td>
            <td>идентификатор квитанции</td>
        </tr>
        <tr>
            <td>quantity</td>
            <td>подробное количество товара</td>
        </tr>
        <tr>
            <td>total</td>
            <td>общая сумма для детального продукта</td>
        </tr>
    </tbody>
</table>

**Связи:**
* связь "один ко многим" (многие товары относятся к определенной категории)
* связь многие-ко-многим (многие товары, принадлежащие одной категории книг, принадлежат многим bill_details)
* отношения многие-к-одному (много bill_detail принадлежит одному счету)

# ER-диаграмма

![ER-diagram](http://github.com/jeremie2k1/Tiki-Web/blob/Database/er_diagram.png)

# Даталогическая модель

![MD-diagram](http://github.com/jeremie2k1/Tiki-Web/blob/Database/modelData.png)