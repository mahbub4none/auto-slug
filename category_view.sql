-- Create category table --
CREATE TABLE `catagory` (
  `id` int(100) NOT NULL,
  `catagory_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
)

-- Insert some data --

INSERT INTO `catagory` (`id`, `catagory_name`, `created_at`, `updated_at`) VALUES
(2, 'Engine', '2019-03-10 03:37:29', '2019-03-10 03:37:29'),
(3, 'Auxiliary Machinaries', '2019-03-10 09:39:39', '2019-03-10 03:37:44'),
(4, 'Deck Machinaries', '2019-03-10 03:37:58', '2019-03-10 03:37:58'),
(5, 'Electric Equipment', '2019-03-10 03:38:07', '2019-03-10 03:38:07'),
(6, 'Fire Equipment', '2019-03-10 03:38:27', '2019-03-10 03:38:27'),
(7, 'Safety Equipment', '2019-03-10 03:38:39', '2019-03-10 03:38:39'),
(8, 'Spare Parts', '2019-03-10 03:38:47', '2019-03-10 03:38:47'),
(9, 'Ship Stores', '2019-03-10 03:38:59', '2019-03-10 03:38:59'),
(10, 'Ship', '2019-03-10 03:39:11', '2019-03-10 03:39:11'),
(11, 'Others', '2019-03-10 03:39:20', '2019-03-10 03:39:20');


--
-- Structure for view `category_view`
-- Here a new column created named 'slug' where it takes the 'catagory_name' column then converts it to lower case letter format and replace spaces with hipens
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `category_view`  AS 
SELECT `c`.`id` AS `id`, `c`.`catagory_name` AS `catagory_name`, replace(lcase(`c`.`catagory_name`),' ','-') AS `slug` FROM `catagory` AS `c` ;
