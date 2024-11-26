<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SongResource\Pages;
use App\Models\Section;
use App\Models\Song;
use Filament\Forms;
use Filament\Resources\Resource;
use Filament\Tables;

class SongResource extends Resource
{
    protected static ?string $model = Song::class;

    protected static ?string $navigationIcon = 'heroicon-o-musical-note';

    public static function form(Forms\Form $form): Forms\Form
    {
        return $form->schema([
            Forms\Components\TextInput::make('judul')
                ->label('Judul Lagu')
                ->required()
                ->maxLength(255),
            Forms\Components\Textarea::make('deskripsi')
                ->label('Deskripsi'),
            Forms\Components\Textarea::make('lirik')
                ->label('Lirik Lagu'),
            Forms\Components\FileUpload::make('gambar')
                    ->required()->image()->disk('public'),    
            Forms\Components\FileUpload::make('audio_file')
                ->label('Audio File')
                ->disk('public')
                ->directory('audio'),
            Forms\Components\Select::make('artis_id')
                ->label('Pilih Artis')
                ->options(Section::where('post_as', 'ARTIS')->pluck('title', 'tipe_id'))
                ->searchable()
                ->placeholder('Pilih Artis')
                ->required(),
            Forms\Components\Select::make('genre_id')
                ->label('Pilih Genre')
                ->options(Section::where('post_as', 'GENRE')->pluck('title', 'tipe_id'))
                ->searchable()
                ->placeholder('Pilih Genre')
                ->required(),
            Forms\Components\Select::make('mood_id')
                ->label('Pilih Mood')
                ->options(Section::where('post_as', 'MOOD')->pluck('title', 'tipe_id'))
                ->searchable()
                ->placeholder('Pilih Mood')
                ->required(),
        ]);
    }

    public static function table(Tables\Table $table): Tables\Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('judul')->label('Judul')->searchable(),
                Tables\Columns\TextColumn::make('artis.title')->label('Artis')->searchable(),
                Tables\Columns\TextColumn::make('genre.title')->label('Genre')->searchable(),
                Tables\Columns\TextColumn::make('mood.title')->label('Mood')->searchable(),
                Tables\Columns\TextColumn::make('created_at')->dateTime()->sortable(),
            ])
            ->filters([])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make(),
            ]);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListSongs::route('/'),
            'create' => Pages\CreateSong::route('/create'),
            'edit' => Pages\EditSong::route('/{record}/edit'),
        ];
    }
}
