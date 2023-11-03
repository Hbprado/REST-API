/*
  Warnings:

  - You are about to drop the column `tittle` on the `bookmarks` table. All the data in the column will be lost.
  - You are about to drop the column `updateAt` on the `bookmarks` table. All the data in the column will be lost.
  - You are about to drop the column `updateAt` on the `users` table. All the data in the column will be lost.
  - Added the required column `title` to the `bookmarks` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `bookmarks` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `users` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "bookmarks" DROP COLUMN "tittle",
DROP COLUMN "updateAt",
ADD COLUMN     "title" TEXT NOT NULL,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "users" DROP COLUMN "updateAt",
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;
