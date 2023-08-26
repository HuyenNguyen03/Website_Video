use master
go

drop DATABASE if exists [asm_java4]
go

create database [asm_java4]
go

use  asm_java4
go

create table [user]
(
	id				int				primary key identity,
	username		varchar(10)		unique not null,
	[password]		varchar(10)		not null,
	email			varchar(50)		unique not null,
	isAdmin			bit				not null default 0,
	isActive		bit				not null default 1
)
go

create table video
(
	id				int				primary key identity,
	title			nvarchar(255)	not null,
	href			varchar(50)		unique not null,
	poster			varchar(255)	null,
	[views]			int				not null default 0,
	shares			int				not null default 0,
	[description]	nvarchar(255)	not null,
	isActive		bit				not null default 1
)
go

create table history
(
	id				int				primary key identity,
	userId			int				foreign key references [user] (id),
	videoId			int				foreign key references video (id),
	viewedDate		datetime		not null default getDate(),
	isLiked			bit				not null default 0,
	likeDate		datetime		null
)
go

insert into [user] (username, [password], email, isAdmin) values
('huynp',		'2812',		'linhbo83@gmail.com',			1),
('huyen',		'2812',		'huyen@gmail.com',			0),
('phong',		'1004',		'ph104Ggmail.com',		1),
('bigboss',		'222',		'bigboss@gmail.com',			0)
go

insert into video (title, href, poster, [description]) values
(N'SUZUME','u_GCYM33BLI',	'https://img.youtube.com/vi/u_GCYM33BLI/maxresdefault.jpg',		N'Suzume'),
(N'BIỆT ĐỘI BẤT ỔN','XHvNz4g88pE',	'https://img.youtube.com/vi/XHvNz4g88pE/maxresdefault.jpg',		N'Biệt đội bất ổn Trailer'),
(N'TRẬN CHIẾN THỜI TIỀN SỬ',			'RVsGFHpNB8E',	'https://img.youtube.com/vi/RVsGFHpNB8E/maxresdefault.jpg',		N'Trận chiến thời tiền sử.'),
(N'BI THƯƠNG NGƯỢC DÒNG THÀNH SÔNG','tWTtvvL7yRg',	'https://img.youtube.com/vi/tWTtvvL7yRg/maxresdefault.jpg',		N'Bi thương ngược dòng thành sông.')
go

insert into history (userId, videoId, isLiked, likeDate) values
(2,	1,	1,	getDate()),
(2,	3,	0,	null)
go

select * from [user]
select * from video
select * from history


select v.id, v.title, v.href, sum(cast(h.isLiked as int)) as tatolLike from	video v left join history h on v.id = h.videoId group by v.id, v.title, v.href order by	sum(cast(h.isLiked as int)) desc
go

create proc sp_selectUserLikedVideoByVideoHref(@videoHref varchar(50))
as begin
	select
		u.id, u.username, u.[password], u.email, u.isAdmin, u.isActive,h.likeDate
	from
		video v left join history h on v.id = h.videoId
			left join [user] u on h.userId = u.id
	where
		v.href = @videoHref and u.isActive = 1 and v.isActive = 1 and h.isLiked = 1
end

	select
		u.id, u.username, u.[password], u.email, u.isAdmin, u.isActive
	from
		video v left join history h on v.id = h.videoId
			left join [user] u on h.userId = u.id
	where
		v.href = '@videoHref' and u.isActive = 1 and v.isActive = 1 and h.isLiked = 1

		select*from history
