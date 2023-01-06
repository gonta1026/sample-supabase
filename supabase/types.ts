export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json }
  | Json[]

export interface Database {
  public: {
    Tables: {
      day_of_menus: {
        Row: {
          created_at: string | null
          date: string | null
          id: string
        }
        Insert: {
          created_at?: string | null
          date?: string | null
          id?: string
        }
        Update: {
          created_at?: string | null
          date?: string | null
          id?: string
        }
      }
      employees: {
        Row: {
          aaaa: number | null
          department: string
          id: number
          name: string | null
        }
        Insert: {
          aaaa?: number | null
          department?: string
          id?: never
          name?: string | null
        }
        Update: {
          aaaa?: number | null
          department?: string
          id?: never
          name?: string | null
        }
      }
      items: {
        Row: {
          id: string
          name: string
          user_id: string | null
        }
        Insert: {
          id?: string
          name?: string
          user_id?: string | null
        }
        Update: {
          id?: string
          name?: string
          user_id?: string | null
        }
      }
      items_day_of_menus: {
        Row: {
          created_at: string | null
          day_of_menu_id: string | null
          id: string
          item_id: string | null
          release_time: string | null
        }
        Insert: {
          created_at?: string | null
          day_of_menu_id?: string | null
          id?: string
          item_id?: string | null
          release_time?: string | null
        }
        Update: {
          created_at?: string | null
          day_of_menu_id?: string | null
          id?: string
          item_id?: string | null
          release_time?: string | null
        }
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      [_ in never]: never
    }
    Enums: {
      [_ in never]: never
    }
  }
}

